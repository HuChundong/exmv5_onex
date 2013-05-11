.class Lcom/htc/util/mail/MailManager$HandleChangeRequester;
.super Landroid/os/Handler;
.source "MailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/MailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleChangeRequester"
.end annotation


# static fields
.field private static final MSG_HANDLE_FOLDERS_CHANGE:I = 0x3e9

.field private static final MSG_HANDLE_MESSAGE_CHANGE:I = 0x3e8


# instance fields
.field private isHandleFoldersChangeInProcessing:Z

.field private isHandleMessageChangeInProcessing:Z

.field final synthetic this$0:Lcom/htc/util/mail/MailManager;


# direct methods
.method private constructor <init>(Lcom/htc/util/mail/MailManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 742
    iput-object p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->this$0:Lcom/htc/util/mail/MailManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 744
    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    .line 745
    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/MailManager;Lcom/htc/util/mail/MailManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;-><init>(Lcom/htc/util/mail/MailManager;)V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/util/mail/MailManager$HandleChangeRequester;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 785
    const/16 v0, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 786
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester$1;-><init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 811
    :goto_0
    return-void

    .line 797
    :cond_0
    const/16 v0, 0x3e9

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 798
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/mail/MailManager$HandleChangeRequester$2;

    invoke-direct {v1, p0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester$2;-><init>(Lcom/htc/util/mail/MailManager$HandleChangeRequester;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 810
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public requestHandleFoldersChange()V
    .locals 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    if-eqz v0, :cond_0

    .line 770
    const-string v0, "MailManager"

    const-string v1, "HandleFoldersChange() already in process, go home!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleFoldersChangeInProcessing:Z

    .line 774
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestHandleMessageChange()V
    .locals 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "MailManager"

    const-string v1, "HandleMessageChange() already in process, go home!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->isHandleMessageChangeInProcessing:Z

    .line 760
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
