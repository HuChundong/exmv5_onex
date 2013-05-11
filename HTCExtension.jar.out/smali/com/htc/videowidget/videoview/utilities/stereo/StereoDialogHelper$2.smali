.class Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;
.super Ljava/lang/Object;
.source "StereoDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->createStereoDialog()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    const/4 v1, 0x2

    #setter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoModeStatus:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$102(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;I)I

    .line 108
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/DisplayService;->setStereoDisplayMode(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v1

    #calls: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mediaplayer_setproperty_stereo2d(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    .line 112
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->play()V

    goto :goto_0
.end method
