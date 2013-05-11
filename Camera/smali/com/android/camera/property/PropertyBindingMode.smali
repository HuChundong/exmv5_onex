.class public final enum Lcom/android/camera/property/PropertyBindingMode;
.super Ljava/lang/Enum;
.source "PropertyBindingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/property/PropertyBindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/property/PropertyBindingMode;

.field public static final enum OneWay:Lcom/android/camera/property/PropertyBindingMode;

.field public static final enum OneWayToSource:Lcom/android/camera/property/PropertyBindingMode;

.field public static final enum TwoWay:Lcom/android/camera/property/PropertyBindingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/property/PropertyBindingMode;

    const-string v1, "OneWay"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/property/PropertyBindingMode;->OneWay:Lcom/android/camera/property/PropertyBindingMode;

    new-instance v0, Lcom/android/camera/property/PropertyBindingMode;

    const-string v1, "OneWayToSource"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/property/PropertyBindingMode;->OneWayToSource:Lcom/android/camera/property/PropertyBindingMode;

    new-instance v0, Lcom/android/camera/property/PropertyBindingMode;

    const-string v1, "TwoWay"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/property/PropertyBindingMode;->TwoWay:Lcom/android/camera/property/PropertyBindingMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/property/PropertyBindingMode;

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->OneWay:Lcom/android/camera/property/PropertyBindingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->OneWayToSource:Lcom/android/camera/property/PropertyBindingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->TwoWay:Lcom/android/camera/property/PropertyBindingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/property/PropertyBindingMode;->$VALUES:[Lcom/android/camera/property/PropertyBindingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/property/PropertyBindingMode;
    .locals 1

    const-class v0, Lcom/android/camera/property/PropertyBindingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyBindingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/property/PropertyBindingMode;
    .locals 1

    sget-object v0, Lcom/android/camera/property/PropertyBindingMode;->$VALUES:[Lcom/android/camera/property/PropertyBindingMode;

    invoke-virtual {v0}, [Lcom/android/camera/property/PropertyBindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/property/PropertyBindingMode;

    return-object v0
.end method
