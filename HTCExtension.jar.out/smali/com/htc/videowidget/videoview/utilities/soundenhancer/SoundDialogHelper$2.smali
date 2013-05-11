.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;
.super Ljava/lang/Object;
.source "SoundDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->showSoundDialog(ILcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;Ljava/lang/String;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

.field final synthetic val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mTempEffect:I
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->access$000(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;->clickListItem(I)V

    .line 91
    :cond_0
    return-void
.end method
