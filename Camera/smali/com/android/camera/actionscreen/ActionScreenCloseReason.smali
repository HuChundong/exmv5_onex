.class public final enum Lcom/android/camera/actionscreen/ActionScreenCloseReason;
.super Ljava/lang/Enum;
.source "ActionScreenCloseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum Capture:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "AutoClose"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "Capture"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    new-instance v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "DeleteMedia"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->$VALUES:[Lcom/android/camera/actionscreen/ActionScreenCloseReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/actionscreen/ActionScreenCloseReason;
    .locals 1

    const-class v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/actionscreen/ActionScreenCloseReason;
    .locals 1

    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->$VALUES:[Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {v0}, [Lcom/android/camera/actionscreen/ActionScreenCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    return-object v0
.end method
