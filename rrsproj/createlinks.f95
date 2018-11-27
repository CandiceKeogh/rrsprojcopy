echo Removing data files...
rm state.data
rm county.data
rm vmake.data
rm vtype.data
rm color.data
rm police1.data
rm police2.data
echo Creating links...
ln -s /home/local/AD/darren/rrsdataf18/state.data state.data
ln -s /home/local/AD/darren/rrsdataf18/county.data county.data
ln -s /home/local/AD/darren/rrsdataf18/vmake.data vmake.data
ln -s /home/local/AD/darren/rrsdataf18/vtype.data vtype.data
ln -s /home/local/AD/darren/rrsdataf18/color.data color.data
ln -s /home/local/AD/darren/rrsdataf18/police1.data police1.data
ln -s /home/local/AD/darren/rrsdataf18/police2.data police2.data
