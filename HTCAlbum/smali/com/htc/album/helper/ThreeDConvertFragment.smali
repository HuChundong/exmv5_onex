.class public Lcom/htc/album/helper/ThreeDConvertFragment;
.super Landroid/app/Fragment;
.source "ThreeDConvertFragment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeDConvertFragment$1;,
        Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mSelectSharedPkgName:Ljava/lang/String;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    .line 21
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkShareIntent()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, component:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, sharedPkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, sharedPkgNameForOther:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, sharedClassName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 105
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 107
    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] Uri is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return v6

    .line 111
    :cond_0
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 114
    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] MimeType is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    if-nez v2, :cond_2

    .line 119
    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] ClassName is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    if-eqz v3, :cond_3

    .line 125
    iput-object v3, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_1
    iget-object v6, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] MimeType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] PkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v6, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] ClassName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 128
    :cond_3
    if-eqz v4, :cond_4

    .line 130
    iput-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1

    .line 135
    :cond_4
    sget-object v7, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] PackageName is null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private selectConvert()V
    .locals 5

    .prologue
    .line 64
    new-instance v2, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v3, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;-><init>(Lcom/htc/album/helper/ThreeDConvertFragment;Lcom/htc/album/helper/ThreeDConvertFragment$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 65
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 66
    .local v1, force2D:Z
    :goto_0
    const/16 v0, 0x68

    .line 68
    .local v0, dlgId:I
    if-eqz v1, :cond_1

    const/16 v0, 0x69

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    .line 73
    return-void

    .line 65
    .end local v0           #dlgId:I
    .end local v1           #force2D:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    .restart local v0       #dlgId:I
    .restart local v1       #force2D:Z
    :cond_1
    const/16 v0, 0x68

    goto :goto_1
.end method


# virtual methods
.method public dismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, dismissDlg:Z
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1, p1}, Lcom/htc/album/processor/ImageProcessorManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 60
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object v1, Lcom/htc/album/helper/ThreeDConvertFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onCreate]"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, errorCheck:Z
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->checkShareIntent()Z

    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->selectConvert()V

    .line 39
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->dismissRunningDialogFragment()V

    .line 82
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 94
    return-void
.end method

.method public showFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, hasDlg:Z
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvertFragment;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 49
    :cond_0
    return v0
.end method
