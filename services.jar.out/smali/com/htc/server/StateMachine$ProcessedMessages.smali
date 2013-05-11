.class Lcom/htc/server/StateMachine$ProcessedMessages;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessedMessages"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mMaxSize:I

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/server/StateMachine$ProcessedMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldestIndex:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    .line 534
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    .line 535
    iput v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 536
    iput v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mCount:I

    .line 542
    return-void
.end method


# virtual methods
.method add(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V
    .locals 3
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 602
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mCount:I

    .line 603
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    if-ge v1, v2, :cond_0

    .line 604
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    new-instance v2, Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/htc/server/StateMachine$ProcessedMessageInfo;-><init>(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 613
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    iget v2, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    .line 607
    .local v0, pmi:Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 608
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    iget v2, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 609
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    .line 611
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->update(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 574
    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mCount:I

    return v0
.end method

.method get(I)Lcom/htc/server/StateMachine$ProcessedMessageInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 582
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mOldestIndex:I

    add-int v0, v1, p1

    .line 583
    .local v0, nextIndex:I
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 584
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/htc/server/StateMachine$ProcessedMessages;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 587
    const/4 v1, 0x0

    .line 589
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/StateMachine$ProcessedMessageInfo;

    goto :goto_0
.end method

.method setSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 550
    iput p1, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMaxSize:I

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mCount:I

    .line 552
    iget-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 553
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
