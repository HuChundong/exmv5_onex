.class Landroid/webkit/EditableWebViewImpl$1;
.super Landroid/os/Handler;
.source "EditableWebViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebViewImpl;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 208
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 311
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 210
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/webkit/EditableWebViewImpl;->updateContentFromMessage(I)V

    goto :goto_0

    .line 221
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    iget-object v4, v4, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 224
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 225
    :try_start_0
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    iget-object v4, v4, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 226
    .local v2, m:Landroid/os/Message;
    iget-object v8, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {v8, v4, v5}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    .line 226
    goto :goto_2

    .line 230
    .end local v2           #m:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    #getter for: Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/EditableWebViewImpl;->access$000(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/WebViewClassic;

    const-string/jumbo v4, "webview"

    const-string v5, "ERROR!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1           #i:I
    .end local v3           #size:I
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl$1;->this$0:Landroid/webkit/EditableWebViewImpl;

    invoke-virtual {v4, v7}, Landroid/webkit/EditableWebViewImpl;->updateContentFromMessage(I)V

    goto :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xa -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138c -> :sswitch_1
        0x2ebb -> :sswitch_0
        0x2ebc -> :sswitch_0
    .end sparse-switch
.end method
