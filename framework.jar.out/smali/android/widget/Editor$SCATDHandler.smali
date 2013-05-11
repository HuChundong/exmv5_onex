.class Landroid/widget/Editor$SCATDHandler;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCATDHandler"
.end annotation


# static fields
.field static final MESSAGE_SCAN_WORD:I = 0x3

.field static final MESSAGE_SC_INIT:I = 0x1

.field static final MESSAGE_SC_RETRY:I = 0x2

.field static final MESSAGE_SC_TIMEOUT_CLOSE:I = 0x4

.field private static final SC_INIT_DELAY:I = 0x3e8

.field private static final SC_RETRY_DELAY:I = 0x1f4

.field private static final SC_RETRY_TIMES:I = 0x2

.field private static final SC_TIMEOUT_DURATION:I = 0x3a98


# instance fields
.field mRetry:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 6501
    iput-object p1, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6513
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6501
    invoke-direct {p0, p1}, Landroid/widget/Editor$SCATDHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 6517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 6550
    :cond_0
    :goto_0
    return-void

    .line 6520
    :pswitch_0
    iput v2, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    .line 6521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 6525
    :pswitch_1
    iget v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$SCATDHandler;->mRetry:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 6526
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 6529
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v1, v0, Landroid/widget/Editor;->mSCATDQueue:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6530
    invoke-static {v2}, Landroid/widget/Editor;->access$6202(Z)Z

    .line 6531
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->SCATDProcessQueue()V

    goto :goto_0

    .line 6537
    :pswitch_2
    iget-object v1, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/widget/Editor;->SCATDRescanWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/widget/Editor;->access$6300(Landroid/widget/Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 6542
    :pswitch_3
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 6543
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 6544
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 6545
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x1

    #setter for: Landroid/widget/Editor;->mIsSCTimeoutclosed:Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$6402(Landroid/widget/Editor;Z)Z

    .line 6546
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "Editor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_SC_TIMEOUT_CLOSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method postSpellCheck(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 6553
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 6554
    iget-object v0, p0, Landroid/widget/Editor$SCATDHandler;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1}, Landroid/widget/SpellChecker;->spellCheck(Ljava/lang/String;)V

    .line 6556
    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6557
    return-void
.end method
