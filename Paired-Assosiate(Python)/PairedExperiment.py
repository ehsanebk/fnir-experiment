
import Tkinter

root = Tkinter.Tk()


def report_event(event):
	print 'key =%s,key_num= %s'%(event.keysym , event.keysum_num)
print "hello"

# make it cover the entire screen
w, h = root.winfo_screenwidth(), root.winfo_screenheight()
root.overrideredirect(1)
root.geometry("%dx%d+0+0" % (w, h))
root.focus_set() # <-- move focus to this widget
root.bind("<Escape>", lambda e: e.widget.quit())

root.mainloop()