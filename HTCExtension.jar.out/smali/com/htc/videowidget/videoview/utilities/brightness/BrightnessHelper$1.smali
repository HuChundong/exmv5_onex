.class Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$1;
.super Landroid/os/Handler;
.source "BrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->dismissBrightnessDialog()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
