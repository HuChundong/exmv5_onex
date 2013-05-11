.class Lcom/htc/album/addons/slideshow/SlideshowBase$4;
.super Ljava/lang/Object;
.source "SlideshowBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

.field final synthetic val$chkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$4;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->launchMusicPicker(Landroid/app/Activity;)V

    .line 797
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$4;->val$chkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$4;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v1, "slide_show_ask_music_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putBoolean(Ljava/lang/String;Z)Z

    .line 799
    :cond_0
    return-void
.end method
