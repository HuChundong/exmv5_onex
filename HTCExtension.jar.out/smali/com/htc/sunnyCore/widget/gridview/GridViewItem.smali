.class public abstract Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.super Lcom/htc/sunnyCore/view/SViewGroup;
.source "GridViewItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/ViewItem;
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItem;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GridViewItem"

.field public static final STYLE_DELETE:I = 0x2

.field public static final STYLE_FAVORITE:I = 0x3

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_PICKER:I = 0x1

.field private static sTextureManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

.field protected mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 35
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 36
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 35
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 36
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 73
    return-void
.end method

.method protected static getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 1
    .parameter "key"

    .prologue
    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    goto :goto_0
.end method

.method protected static isExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 64
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 1
    .parameter "key"

    .prologue
    .line 59
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    goto :goto_0
.end method

.method protected static setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V
    .locals 1
    .parameter "key"
    .parameter "textureSet"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    if-nez p1, :cond_1

    .line 53
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->sTextureManager:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onItemClick()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;->onClickAnimation(Lcom/htc/sunnyCore/view/SView;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onItemPress()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;->onPressAnimation(Lcom/htc/sunnyCore/view/SView;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onItemRelease()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    invoke-interface {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;->onReleaseAnimation(Lcom/htc/sunnyCore/view/SView;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 77
    return-void
.end method

.method public setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    .line 81
    return-void
.end method
