.class final enum Lcom/android/camera/Resolution$Category;
.super Ljava/lang/Enum;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/Resolution$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/Resolution$Category;

.field public static final enum Large:Lcom/android/camera/Resolution$Category;

.field public static final enum Medium:Lcom/android/camera/Resolution$Category;

.field public static final enum Small:Lcom/android/camera/Resolution$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/Resolution$Category;

    const-string v1, "Large"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Resolution$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    new-instance v0, Lcom/android/camera/Resolution$Category;

    const-string v1, "Medium"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/Resolution$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    new-instance v0, Lcom/android/camera/Resolution$Category;

    const-string v1, "Small"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/Resolution$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/Resolution$Category;

    sget-object v1, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/Resolution$Category;->$VALUES:[Lcom/android/camera/Resolution$Category;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/Resolution$Category;
    .locals 1

    const-class v0, Lcom/android/camera/Resolution$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Resolution$Category;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/Resolution$Category;
    .locals 1

    sget-object v0, Lcom/android/camera/Resolution$Category;->$VALUES:[Lcom/android/camera/Resolution$Category;

    invoke-virtual {v0}, [Lcom/android/camera/Resolution$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/Resolution$Category;

    return-object v0
.end method
