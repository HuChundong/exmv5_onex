.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;
.super Ljava/lang/Object;
.source "SoundDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;->clickOKButton()V

    .line 100
    :cond_0
    return-void
.end method
