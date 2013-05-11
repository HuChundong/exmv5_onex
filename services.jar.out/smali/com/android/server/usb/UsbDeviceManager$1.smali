.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    .line 177
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] USB UEVENT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v7, "USB_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, state:Ljava/lang/String;
    const-string v7, "ACCESSORY"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, accessory:Ljava/lang/String;
    const-string v7, "SWITCH_NAME"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, szSwName:Ljava/lang/String;
    const-string v7, "SWITCH_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, szSwState:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 185
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v7, "START"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 187
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "got accessory start"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #calls: Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    .line 189
    :cond_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 191
    :try_start_0
    const-string v7, "usb_connect2pc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 194
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x0

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse switch state from event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v7, "dock"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    const-string v7, "16"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 200
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :cond_4
    const-string v7, "MODULE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, szModuleName:Ljava/lang/String;
    const-string v7, "EVENT"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, szEventName:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 211
    const-string v7, "msm_otg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DEV_NOT_SUPPORTED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/4 v8, 0x6

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0
.end method
