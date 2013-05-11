.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;
.super Landroid/os/Handler;
.source "SoundDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    #getter for: Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->access$000(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    #getter for: Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->mSoundEffectAdapter:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->access$000(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method
