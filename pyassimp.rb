  depends_on :python => :recommended
  depends_on 'assimp'

  def patches
    DATA
  end
    temp_site_packages = lib/python.xy/'site-packages'
    system python, "-s", "setup.py", *args
    system python, "-c", "'import pyassimp'"

__END__
diff --git a/setup.py b/setup.py
new file mode 100644
index 0000000..35834a2
--- /dev/null
+++ b/setup.py
@@ -0,0 +1,19 @@
+from distutils.core import setup
+
+setup_data = dict(packages=['pyassimp', ],
+                  package_dir = {'pyassimp': 'port/PyAssimp/pyassimp'},
+                  name='PyAssimp',
+                  version='3.0.1264',
+                  author='ASSIMP Development Team',
+                  author_email='https://sourceforge.net/mailarchive/forum.php?forum_name=assimp-discussions',
+                  license='BSD (3-clause)',
+                  url='http://assimp.sf.net',
+                  description='Wrapper for ASSIMP at '
+                              'http://assimp.sourceforge.net',
+                  long_description='''\
+A wrapper for the Open Asset Import Library (ASSIMP).'''
+                  )
+
+if __name__ == '__main__':
+    setup(**setup_data)
+