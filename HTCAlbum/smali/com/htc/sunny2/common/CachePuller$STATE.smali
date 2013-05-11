.class final enum Lcom/htc/sunny2/common/CachePuller$STATE;
.super Ljava/lang/Enum;
.source "CachePuller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/CachePuller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/common/CachePuller$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/common/CachePuller$STATE;

.field public static final enum FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

.field public static final enum NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

.field public static final enum PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

.field public static final enum PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

.field public static final enum SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    const-string v1, "NOT_SETUP"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/common/CachePuller$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 18
    new-instance v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    const-string v1, "PULL_BEGIN"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/common/CachePuller$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 19
    new-instance v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    const-string v1, "PULL_ITERATE"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/common/CachePuller$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 20
    new-instance v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/htc/sunny2/common/CachePuller$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 21
    new-instance v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    const-string v1, "SUCCEEDED"

    invoke-direct {v0, v1, v6}, Lcom/htc/sunny2/common/CachePuller$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->$VALUES:[Lcom/htc/sunny2/common/CachePuller$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/common/CachePuller$STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/CachePuller$STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/common/CachePuller$STATE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->$VALUES:[Lcom/htc/sunny2/common/CachePuller$STATE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/common/CachePuller$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/common/CachePuller$STATE;

    return-object v0
.end method
