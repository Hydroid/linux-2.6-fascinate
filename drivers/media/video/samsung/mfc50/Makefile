
obj-$(CONFIG_VIDEO_MFC50) += mfc_fw.o mfc.o mfc_intr.o mfc_memory.o mfc_opr.o 

obj-$(CONFIG_VIDEO_MFC50) += mfc_buffer_manager.o  mfc_shared_mem.o

ifeq ($(CONFIG_VIDEO_MFC50_DEBUG),y)
EXTRA_CFLAGS += -DDEBUG
endif

#EXTRA_CFLAGS += -DMFC_REQUEST_TIME
