.class public Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter$OnListClickListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "SharedAdapter.KEY_CLASS_NAME"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE"

.field public static final KEY_PACKAGE_NAME_FOR_OTHER:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

.field public static final KEY_SHARE_TO:Ljava/lang/String; = "SharedAdapter.KEY_SHARE_TO"

.field public static final SHARE_CONFLICT:I = 0x30000

.field public static final SHARE_IMAGE:I = 0x1

.field public static final SHARE_MULTIPLE:I = 0x20000

.field public static final SHARE_MULTIPLE_BOTH:I = 0x20003

.field public static final SHARE_MULTIPLE_IMAGES:I = 0x20001

.field public static final SHARE_MULTIPLE_ITEM_SET_AS:I = 0x440000

.field public static final SHARE_MULTIPLE_ITEM_SHARE:I = 0x220000

.field public static final SHARE_MULTIPLE_VIDEOS:I = 0x20002

.field public static final SHARE_SINGLE:I = 0x10000

.field public static final SHARE_SINGLE_BOTH:I = 0x10003

.field public static final SHARE_SINGLE_IMAGE:I = 0x10001

.field public static final SHARE_SINGLE_ITEM_SET_AS:I = 0x330000

.field public static final SHARE_SINGLE_ITEM_SHARE:I = 0x110000

.field public static final SHARE_SINGLE_VIDEO:I = 0x10002

.field public static final SHARE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SharedAdapter"


# instance fields
.field private mCombinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "bShowIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, combinedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mCombinedList:Ljava/util/List;

    .line 62
    iput-boolean p3, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mShowIcon:Z

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    return-object p2
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/share/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 111
    .local v0, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method
