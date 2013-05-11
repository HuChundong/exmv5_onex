.class public final enum Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;
.super Ljava/lang/Enum;
.source "ISceneDepthControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEPTH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

.field public static final enum DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

.field public static final enum INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    const-string v1, "INCREMENT"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    .line 6
    new-instance v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    const-string v1, "DECREMENT"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->$VALUES:[Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-virtual {v0}, [Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    return-object v0
.end method
