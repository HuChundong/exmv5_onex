.class public final enum Lcom/android/camera/widget/PopupBubble$ExpandDirection;
.super Ljava/lang/Enum;
.source "PopupBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/PopupBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpandDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/widget/PopupBubble$ExpandDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field public static final enum Default:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field public static final enum Down:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field public static final enum Left:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field public static final enum Right:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field public static final enum Up:Lcom/android/camera/widget/PopupBubble$ExpandDirection;


# instance fields
.field public final value:I

.field public final xOffset:I

.field public final yOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const-string v1, "Default"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/PopupBubble$ExpandDirection;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Default:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    new-instance v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const-string v4, "Up"

    move v5, v9

    move v6, v9

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/widget/PopupBubble$ExpandDirection;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Up:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    new-instance v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const-string v4, "Down"

    move v5, v10

    move v6, v10

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/widget/PopupBubble$ExpandDirection;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Down:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    new-instance v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const-string v4, "Left"

    move v5, v11

    move v6, v11

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/widget/PopupBubble$ExpandDirection;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Left:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    new-instance v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const-string v4, "Right"

    move v5, v12

    move v6, v12

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/widget/PopupBubble$ExpandDirection;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Right:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    sget-object v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Default:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Up:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Down:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Left:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Right:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    aput-object v1, v0, v12

    sput-object v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->$VALUES:[Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->value:I

    iput p4, p0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->xOffset:I

    iput p5, p0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->yOffset:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/widget/PopupBubble$ExpandDirection;
    .locals 1

    const-class v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/widget/PopupBubble$ExpandDirection;
    .locals 1

    sget-object v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->$VALUES:[Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    invoke-virtual {v0}, [Lcom/android/camera/widget/PopupBubble$ExpandDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    return-object v0
.end method
