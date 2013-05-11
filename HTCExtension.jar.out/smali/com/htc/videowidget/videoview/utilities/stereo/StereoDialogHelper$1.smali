.class Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;
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
    .line 116
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->play()V

    goto :goto_0
.end method
