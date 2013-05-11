.class public Lcom/android/camera/actionscreen/CommonActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "CommonActionScreen.java"


# static fields
.field private static final MSG_CLOSE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Common Action Screen"


# instance fields
.field private m_BackButton:Landroid/view/View;

.field private m_CurrentAction:Ljava/lang/Runnable;

.field private m_CurrentPopupObject:Ljava/lang/Object;

.field private final m_DeleteAction:Ljava/lang/Runnable;

.field private m_DeleteButton:Landroid/view/View;

.field private final m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private m_DialogHandle:Lcom/android/camera/Handle;

.field private m_FunctionBar:Landroid/view/View;

.field private m_IsTimeout:Z

.field private m_IsTouchDelegateSet:Z

.field private final m_PlayAction:Ljava/lang/Runnable;

.field private m_PlayButton:Landroid/view/View;

.field private m_PopupOffsetX:I

.field private m_PopupOffsetY:I

.field private final m_RecaptureAction:Ljava/lang/Runnable;

.field private m_ReviewContainer:Landroid/view/View;

.field private m_RotateContainer:[Landroid/widget/RelativeLayout;

.field private final m_SetAsAction:Ljava/lang/Runnable;

.field private m_SetAsButton:Landroid/view/View;

.field private final m_ShareAction:Ljava/lang/Runnable;

.field private m_ShareButton:Landroid/view/View;

.field private m_Timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const-string v0, "Common Action Screen"

    const v1, 0x7f030007

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$1;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$2;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$3;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$4;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$5;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$6;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$7;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/CameraSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    return-object v0
.end method

.method private closePopupObjects()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRotateDialogManager;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IRotateDialogManager;->hideDialog(Lcom/android/camera/Handle;)V

    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/android/camera/Handle;

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/camera/widget/PopupBubble;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method

.method private getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCaptureClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot re-capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeleteClicked()V
    .locals 12

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onDeleteClicked() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Action screen is closed, cancel action"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Another action is performing, cannot delete content"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Media is not saved yet, delete content later"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$9;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$9;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    new-instance v6, Lcom/android/camera/actionscreen/CommonActionScreen$10;

    invoke-direct {v6, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$10;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    new-instance v2, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v2}, Lcom/android/camera/QueryEventArgs;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v8, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v2}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    new-instance v8, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x2040214

    invoke-virtual {v8, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0066

    invoke-virtual {v8, v9, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040152

    invoke-virtual {v8, v9, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v8}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    const-class v8, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {p0, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    if-eqz v1, :cond_6

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v0, v8, v11}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogHandle:Lcom/android/camera/Handle;

    :goto_2
    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onDeleteClicked() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v8, v4, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v8, :cond_5

    iget-object v8, v4, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v3, v8, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01d6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v3, ""

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onPlayClicked()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Action screen is closed, cancel action"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Another action is performing, cannot play video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Media is not saved yet, play video later"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_4

    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    :cond_5
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.video - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.album - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private onSetAsClicked()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onSetAsClicked() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Action screen is closed, cancel action"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Another action is performing, cannot set media"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Media is not saved yet, set later"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v8, v4, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    invoke-direct {p0, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to set as"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MediaInfo;

    if-eqz v6, :cond_6

    iget-object v8, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v8, :cond_6

    iget-object v8, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to set as"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-direct {v0, v4, v6}, Lcom/android/camera/share/MediaSetAsListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/MediaInfo;)V

    new-instance v5, Lcom/htc/widget/HtcListView;

    invoke-direct {v5, v4}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    invoke-virtual {v5, v11}, Lcom/htc/widget/HtcListView;->setDarkModeEnabled(Z)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    invoke-virtual {v5, v11, v10}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v2, -0x2

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$11;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$11;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v8}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    :goto_1
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$12;

    invoke-direct {v8, p0, v1, v4, v0}, Lcom/android/camera/actionscreen/CommonActionScreen$12;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaSetAsListAdapter;)V

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    iget v10, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    invoke-virtual {v1, v8, v9, v10}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_8
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onSetAsClicked() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onShareClicked()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onShareClicked() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Action screen is closed, cancel action"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Another action is performing, cannot share content"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Media is not saved yet, share content later"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v8, v4, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    invoke-direct {p0, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to share"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v8

    const-string v9, "pref_capture_last_share"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/camera/share/MediaShareListAdapter;

    invoke-direct {v0, v4, v7, v5}, Lcom/android/camera/share/MediaShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v6, Lcom/htc/widget/HtcListView;

    invoke-direct {v6, v4}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    invoke-virtual {v6, v12}, Lcom/htc/widget/HtcListView;->setDarkModeEnabled(Z)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    invoke-virtual {v6, v12, v11}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v2, -0x2

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$13;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$13;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v8}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    :goto_1
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$14;

    invoke-direct {v8, p0, v1, v0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen$14;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/share/MediaShareListAdapter;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    iget v10, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    invoke-virtual {v1, v8, v9, v10}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_6
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onShareClicked() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onTimeout()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareHtcActionScreen()V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x4

    const v11, 0x7f08005d

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    if-nez v6, :cond_3

    const v6, 0x7f0b0113

    invoke-virtual {p0, v6}, Lcom/android/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetX:I

    const v6, 0x7f0b0114

    invoke-virtual {p0, v6}, Lcom/android/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PopupOffsetY:I

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    const v6, 0x7f080014

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v7, 0x7f080059

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-array v7, v12, [Landroid/widget/RelativeLayout;

    const v6, 0x7f08005f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v10

    const/4 v8, 0x2

    const v6, 0x7f08005b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    aput-object v6, v7, v8

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v6, v7, v8

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Landroid/widget/RelativeLayout;

    const v6, 0x7f080057

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    const v6, 0x7f08005a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$15;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$15;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f08005e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f02004f

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$16;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$16;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$17;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$17;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f08005c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020041

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$18;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$18;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080060

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020051

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$19;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$19;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Landroid/widget/RelativeLayout;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v2, v0, v3

    instance-of v6, v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v6, :cond_4

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    instance-of v6, v6, Lcom/android/camera/rotate/RotateImageView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    check-cast v6, Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v6, v5}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_7
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    :cond_8
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    :cond_9
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    :cond_a
    return-void
.end method

.method private resetBackButtonBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private resizeContainer(Landroid/widget/RelativeLayout;)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0b010f

    invoke-virtual {p0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x7f0b0112

    invoke-virtual {p0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->getDimension(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    :sswitch_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :sswitch_1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08005b -> :sswitch_0
        0x7f08005f -> :sswitch_1
    .end sparse-switch
.end method

.method private setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {p2, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {p2, v1}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method public final clearAction()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method protected closeActionScreen(Z)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/actionscreen/CommonActionScreen$8;

    invoke-direct {v1, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$8;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "ActionScreen=>close=>triggerAutoUpload"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->triggerAutoUpload()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onTimeout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasAction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureFailed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    invoke-super {p0}, Lcom/android/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1

    iget v0, p2, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/MediaEventArgs;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Media save failed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    :cond_2
    return-void
.end method

.method public final performAction(Ljava/lang/Runnable;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Another action is performing, cannot perform action"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, perform action later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public final setAutoCloseTimeout(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method public final setDeleteButtonEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setSetAsButtonEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setShareButtonEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final startAutoCloseTimer()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpening()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->reviewDuration:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    :goto_1
    invoke-virtual {p0, p0, v5, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getMilliseconds()J

    move-result-wide v1

    goto :goto_1
.end method
