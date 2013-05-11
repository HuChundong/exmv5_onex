.class public Lcom/htc/server/StateMachine$ProcessedMessageInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedMessageInfo"
.end annotation


# instance fields
.field private orgState:Lcom/htc/server/State;

.field private state:Lcom/htc/server/State;

.field private what:I


# direct methods
.method constructor <init>(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V
    .locals 0
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 452
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->update(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V

    .line 454
    return-void
.end method

.method private cn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string v2, "null"

    .line 513
    :goto_0
    return-object v2

    .line 511
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 513
    .local v0, lastDollar:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getOriginalState()Lcom/htc/server/State;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->orgState:Lcom/htc/server/State;

    return-object v0
.end method

.method public getState()Lcom/htc/server/State;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->state:Lcom/htc/server/State;

    return-object v0
.end method

.method public getWhat()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->what:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget v1, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->state:Lcom/htc/server/State;

    invoke-direct {p0, v1}, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, " orgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->orgState:Lcom/htc/server/State;

    invoke-direct {p0, v1}, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/os/Message;Lcom/htc/server/State;Lcom/htc/server/State;)V
    .locals 1
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->what:I

    .line 464
    iput-object p2, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->state:Lcom/htc/server/State;

    .line 465
    iput-object p3, p0, Lcom/htc/server/StateMachine$ProcessedMessageInfo;->orgState:Lcom/htc/server/State;

    .line 466
    return-void
.end method
