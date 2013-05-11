.class final enum Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
.super Ljava/lang/Enum;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnlockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Device:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum DualPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum DualPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum NetworkLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SubSimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum SubSimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum UimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum UimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field public static final enum Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Pattern"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 184
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPin"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 189
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SimPuk"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 194
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Account"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 199
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Password"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 204
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Unknown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 210
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "NetworkLock"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->NetworkLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 217
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "Device"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Device:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 224
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "UimPin"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 229
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SubSimPin"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 234
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "UimPuk"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 239
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "SubSimPuk"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 244
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "DualPuk"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 249
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    const-string v1, "DualPin"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 174
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->NetworkLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Device:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const-class v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    return-object v0
.end method


# virtual methods
.method public isPinLocked()Z
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPukLocked()Z
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->UimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SubSimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->DualPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
