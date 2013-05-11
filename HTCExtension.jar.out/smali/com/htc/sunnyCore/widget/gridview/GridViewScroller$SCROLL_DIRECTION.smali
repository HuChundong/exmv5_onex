.class public final enum Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;
.super Ljava/lang/Enum;
.source "GridViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCROLL_DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

.field public static final enum DOWN:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

.field public static final enum UP:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->DOWN:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->UP:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->DOWN:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->UP:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->$VALUES:[Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->$VALUES:[Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    invoke-virtual {v0}, [Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunnyCore/widget/gridview/GridViewScroller$SCROLL_DIRECTION;

    return-object v0
.end method
