.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;
.super Ljava/lang/Object;
.source "SoundDialogHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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

.field final synthetic val$state:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$state:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    iput-object p3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "index"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iget-object v2, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    invoke-virtual {v2, p3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->getSoundListItem(I)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;

    move-result-object v1

    .line 74
    .local v1, selectItem:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
    iget-boolean v2, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v2, v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iget-object v2, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$state:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    invoke-virtual {v2, p3, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->refreshSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 79
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    iget-object v2, v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$state:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    invoke-virtual {v2, p3, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->getEffectFromListIndex(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I

    move-result v0

    .line 80
    .local v0, effect:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;->val$CB:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-interface {v2, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;->clickListItem(I)V

    goto :goto_0
.end method
