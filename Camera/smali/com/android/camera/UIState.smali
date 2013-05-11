.class public final enum Lcom/android/camera/UIState;
.super Ljava/lang/Enum;
.source "UIState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/UIState;

.field public static final enum Closed:Lcom/android/camera/UIState;

.field public static final enum Closing:Lcom/android/camera/UIState;

.field public static final enum Opened:Lcom/android/camera/UIState;

.field public static final enum Opening:Lcom/android/camera/UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/UIState;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    new-instance v0, Lcom/android/camera/UIState;

    const-string v1, "Closing"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    new-instance v0, Lcom/android/camera/UIState;

    const-string v1, "Opened"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    new-instance v0, Lcom/android/camera/UIState;

    const-string v1, "Opening"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/UIState;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/UIState;->$VALUES:[Lcom/android/camera/UIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/UIState;
    .locals 1

    const-class v0, Lcom/android/camera/UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/UIState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/UIState;
    .locals 1

    sget-object v0, Lcom/android/camera/UIState;->$VALUES:[Lcom/android/camera/UIState;

    invoke-virtual {v0}, [Lcom/android/camera/UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/UIState;

    return-object v0
.end method
