.class public Lcom/htc/graphics/drawable/RecyclableUrlDrawable;
.super Lcom/htc/graphics/drawable/UrlDrawable;
.source "RecyclableUrlDrawable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 36
    return-void
.end method
