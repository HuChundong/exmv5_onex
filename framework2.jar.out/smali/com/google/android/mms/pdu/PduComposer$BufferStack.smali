.class Lcom/google/android/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;

.field private toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1358
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1360
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1362
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    return-object v0
.end method


# virtual methods
.method copy()V
    .locals 4

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1419
    return-void
.end method

.method mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .locals 3

    .prologue
    .line 1425
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    .line 1427
    .local v0, m:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #setter for: Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->access$602(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1428
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    #setter for: Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->access$702(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1430
    return-object v0
.end method

.method newbuf()V
    .locals 3

    .prologue
    .line 1371
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    if-eqz v1, :cond_0

    .line 1372
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/google/android/mms/pdu/PduComposer$1;)V

    .line 1377
    .local v0, temp:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1378
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1380
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1381
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1383
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1386
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1387
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1388
    return-void
.end method

.method pop()V
    .locals 4

    .prologue
    .line 1395
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v0, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1396
    .local v0, currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1398
    .local v1, currentPosition:I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    iput-object v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1399
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1401
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1404
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1405
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1407
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1408
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput v1, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1409
    return-void
.end method
