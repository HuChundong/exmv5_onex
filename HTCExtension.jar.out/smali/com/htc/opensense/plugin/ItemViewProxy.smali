.class public Lcom/htc/opensense/plugin/ItemViewProxy;
.super Ljava/lang/Object;
.source "ItemViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;,
        Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ItemViewProxy"

.field private static pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private layout_id:I

.field private mBackdoor:Z

.field private mInflateExterior:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    .line 407
    iput-boolean v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    .line 408
    iput-boolean v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    .line 263
    return-void
.end method

.method private addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V
    .locals 3
    .parameter "id"
    .parameter "attr"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 285
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    .restart local v0       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    iget-object v1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public static obtain()Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 4

    .prologue
    .line 273
    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 274
    :try_start_0
    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy;

    .line 278
    .local v0, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :goto_0
    monitor-exit v2

    .line 280
    return-object v0

    .line 277
    .end local v0           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_0
    new-instance v0, Lcom/htc/opensense/plugin/ItemViewProxy;

    invoke-direct {v0}, Lcom/htc/opensense/plugin/ItemViewProxy;-><init>()V

    .restart local v0       #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    goto :goto_0

    .line 278
    .end local v0           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V
    .locals 10
    .parameter "text"
    .parameter "callback"

    .prologue
    const/4 v9, 0x0

    .line 568
    if-eqz p0, :cond_0

    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 569
    check-cast v6, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lcom/htc/text/style/UrlDrawableSpan;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/text/style/UrlDrawableSpan;

    .line 571
    .local v5, spans:[Lcom/htc/text/style/UrlDrawableSpan;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/text/style/UrlDrawableSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 572
    .local v4, span:Lcom/htc/text/style/UrlDrawableSpan;
    invoke-virtual {v4}, Lcom/htc/text/style/UrlDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 573
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 574
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v0           #arr$:[Lcom/htc/text/style/UrlDrawableSpan;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #span:Lcom/htc/text/style/UrlDrawableSpan;
    .end local v5           #spans:[Lcom/htc/text/style/UrlDrawableSpan;
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;)V
    .locals 9
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 297
    if-nez p1, :cond_1

    .line 326
    :cond_0
    return-void

    .line 301
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 302
    .local v3, id:I
    const/4 v5, 0x0

    .line 304
    .local v5, targetView:Landroid/view/View;
    if-eqz p2, :cond_5

    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 305
    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 306
    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #targetView:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 317
    .restart local v5       #targetView:Landroid/view/View;
    :cond_3
    :goto_0
    if-nez v5, :cond_6

    .line 318
    new-instance v6, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 308
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 309
    if-eqz v5, :cond_3

    .line 310
    iget-object v6, p2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 321
    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 322
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    .line 323
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-virtual {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->apply(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    const-string v0, "backdoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    .line 422
    :goto_0
    return v0

    .line 419
    :cond_0
    const-string v0, "inflateExterior"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemLayoutId()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    return v0
.end method

.method public getViewActions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    return-object v0
.end method

.method public recycle()V
    .locals 7

    .prologue
    .line 545
    iget-object v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 547
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 548
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    .line 549
    .local v0, action:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->recycle()V

    goto :goto_1

    .line 551
    .end local v0           #action:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 554
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/opensense/plugin/ItemViewProxy$Action;>;"
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->attrs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 555
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    .line 557
    sget-object v6, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    monitor-enter v6

    .line 558
    :try_start_0
    sget-object v5, Lcom/htc/opensense/plugin/ItemViewProxy;->pool:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    monitor-exit v6

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 431
    const-string v1, "setBackdoor"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iput-boolean p3, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mBackdoor:Z

    .line 440
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v1, "setInflateExterior"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iput-boolean p3, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->mInflateExterior:Z

    goto :goto_0

    .line 436
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 438
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    goto :goto_0
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 402
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 404
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 405
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 448
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 450
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 451
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 335
    const-class v1, Ljava/lang/CharSequence;

    invoke-static {p2, v1, p3}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 337
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 338
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 391
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 393
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 394
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 380
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 382
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 383
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 349
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 350
    return-void
.end method

.method public setItemLayout(I)V
    .locals 0
    .parameter "layout_id"

    .prologue
    .line 528
    iput p1, p0, Lcom/htc/opensense/plugin/ItemViewProxy;->layout_id:I

    .line 532
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 369
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 371
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 372
    return-void
.end method

.method public setNullity(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter "viewId"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 469
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 470
    return-void
.end method

.method public setObject(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 457
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 459
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 460
    return-void
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "viewId"
    .parameter "l"

    .prologue
    .line 509
    const-string v0, "setOnClickListener"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "viewId"
    .parameter "l"

    .prologue
    .line 518
    const-string v0, "setOnTouchListener"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 3
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 358
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-result-object v0

    .line 360
    .local v0, attr:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->addAction(ILcom/htc/opensense/plugin/ItemViewProxy$Action;)V

    .line 361
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 500
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setInt(ILjava/lang/String;I)V

    .line 501
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 482
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 483
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setInt(ILjava/lang/String;I)V

    .line 492
    return-void
.end method
