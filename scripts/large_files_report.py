"""
Large Files Report - Find biggest files on disk
"""
import os
import datetime

def scan_large_files(root_path, min_size_mb=100, top_n=20):
    """Scan and report largest files"""
    large_files = []
    
    for dirpath, dirnames, filenames in os.walk(root_path):
        # Skip system folders
        skip_dirs = {'$Recycle.bin', 'System Volume Information', 'Windows', 'Program Files'}
        dirnames[:] = [d for d in dirnames if d not in skip_dirs]
        
        for f in filenames:
            try:
                fp = os.path.join(dirpath, f)
                size = os.path.getsize(fp)
                if size >= min_size_mb * 1024 * 1024:
                    modified = datetime.datetime.fromtimestamp(os.path.getmtime(fp))
                    large_files.append((size, fp, modified))
            except:
                continue
    
    # Sort by size descending
    large_files.sort(reverse=True, key=lambda x: x[0])
    
    print(f"\n{'='*80}")
    print(f"TOP {top_n} LARGEST FILES (>={min_size_mb}MB)")
    print(f"{'='*80}")
    print(f"{'SIZE':>12} {'MODIFIED':>20}  {'PATH'}")
    print(f"{'-'*12} {'-'*20}  {'-'*40}")
    
    for size, path, modified in large_files[:top_n]:
        size_mb = size / (1024 * 1024)
        print(f"{size_mb:>10.1f} MB  {modified.strftime('%Y-%m-%d %H:%M'):>20}  {path}")
    
    total_gb = sum(s for s, _, _ in large_files) / (1024**3)
    print(f"\nTotal large files: {len(large_files)} ({total_gb:.1f} GB)")
    print(f"{'='*80}")

if __name__ == "__main__":
    import sys
    path = sys.argv[1] if len(sys.argv) > 1 else "C:\\Users\\Admin"
    min_size = int(sys.argv[2]) if len(sys.argv) > 2 else 100
    scan_large_files(path, min_size)
