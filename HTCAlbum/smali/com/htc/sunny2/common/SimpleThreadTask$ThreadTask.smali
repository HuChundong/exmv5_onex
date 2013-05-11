.class final Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;
.super Ljava/lang/Object;
.source "SimpleThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadTask"
.end annotation


# instance fields
.field private mId:I

.field private mParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParams;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleThreadTask;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/SimpleThreadTask;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "nId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITParams;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    .local p3, params:Ljava/lang/Object;,"TParams;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->this$0:Lcom/htc/sunny2/common/SimpleThreadTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    .line 239
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->UNKNOWN:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 243
    iput p2, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    .line 244
    iput-object p3, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    return-object v0
.end method
