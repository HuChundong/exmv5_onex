.class public Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$CompareResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LinkProperties"


# instance fields
.field private mDnses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpProxy:Landroid/net/ProxyProperties;

.field private mHttpProxyV6:Landroid/net/ProxyProperties;

.field mIfaceName:Ljava/lang/String;

.field private mIfaceNameV6:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 730
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 93
    invoke-virtual {p0}, Landroid/net/LinkProperties;->clear()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 7
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 98
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, l:Landroid/net/LinkAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v2           #l:Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, i:Ljava/net/InetAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v0           #i:Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, r:Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v5

    :goto_3
    iput-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 106
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_4
    iput-object v5, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 111
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void

    .line 103
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    goto :goto_3

    .line 107
    :cond_5
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    goto :goto_4
.end method


# virtual methods
.method public addDns(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "dns"

    .prologue
    .line 157
    monitor-enter p0

    .line 159
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    monitor-exit p0

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 137
    monitor-enter p0

    .line 139
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    monitor-exit p0

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addRoute(Landroid/net/RouteInfo;)V
    .locals 1
    .parameter "route"

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    monitor-exit p0

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    .line 243
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 245
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 246
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 253
    monitor-exit p0

    .line 255
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearV4()V
    .locals 10

    .prologue
    .line 259
    monitor-enter p0

    .line 261
    :try_start_0
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before clearV4:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v5, varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 271
    .local v2, l:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_0

    .line 272
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/net/LinkAddress;
    .end local v5           #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 274
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 275
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, varDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 280
    .local v0, d:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_2

    .line 281
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_3
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 284
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 287
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v6, varRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 289
    .local v3, r:Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_4

    .line 291
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_5
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 295
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 298
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 301
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After clearV4():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method

.method public clearV6()V
    .locals 10

    .prologue
    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Before clearV6():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v5, varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 319
    .local v2, l:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 320
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/net/LinkAddress;
    .end local v5           #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 322
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #varLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 323
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v4, varDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 328
    .local v0, d:Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    .line 329
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_3
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 332
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v7, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 335
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v6, varRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 337
    .local v3, r:Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    .line 339
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 342
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_5
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->clear()V

    .line 343
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 346
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 349
    const-string v7, "LinkProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After clearV6():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    monitor-enter p0

    .line 562
    :try_start_0
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 563
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 564
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 565
    if-eqz p1, :cond_1

    .line 566
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 567
    .local v1, newAddress:Landroid/net/LinkAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Landroid/net/LinkAddress;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 572
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    monitor-enter p0

    .line 598
    :try_start_0
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 600
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 601
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 602
    if-eqz p1, :cond_1

    .line 603
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 604
    .local v1, newAddress:Ljava/net/InetAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Ljava/net/InetAddress;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 609
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    .line 634
    :try_start_0
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 636
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 637
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 638
    if-eqz p1, :cond_1

    .line 639
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 640
    .local v1, r:Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 647
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/RouteInfo;
    .end local v2           #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 645
    .restart local v2       #result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    if-ne p0, p1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    instance-of v3, p1, Landroid/net/LinkProperties;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 520
    check-cast v0, Landroid/net/LinkProperties;

    .line 532
    .local v0, target:Landroid/net/LinkProperties;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceNameV6(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxyV6(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddresses()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 127
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 129
    .restart local v0       #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getDnses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHttpProxy()Landroid/net/ProxyProperties;
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHttpProxyV6()Landroid/net/ProxyProperties;
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    monitor-exit p0

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceNameV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLinkAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 660
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v1

    iget-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v1, :cond_1

    move v1, v0

    :goto_1
    add-int/2addr v2, v1

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v0

    :goto_2
    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->hashCode()I

    move-result v0

    goto :goto_3

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 419
    monitor-enter p0

    .line 421
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 422
    .local v1, targetAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 423
    .local v0, sourceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 426
    .end local v0           #sourceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v1           #targetAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 438
    monitor-enter p0

    .line 440
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 441
    .local v0, targetDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    .end local v0           #targetDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdenticalHttpProxyV6(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxyV6()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalInterfaceNameV6(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 456
    monitor-enter p0

    .line 458
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    .line 459
    .local v0, targetRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 462
    .end local v0           #targetRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 196
    monitor-enter p0

    .line 198
    :try_start_0
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 200
    monitor-exit p0

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHttpProxyV6(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxyV6"

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 114
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setInterfaceNameV6(Ljava/lang/String;)V
    .locals 1
    .parameter "ifaceV6"

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    .line 217
    monitor-exit p0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 366
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v10, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v10, :cond_0

    const-string v3, ""

    .line 370
    .local v3, ifaceName:Ljava/lang/String;
    :goto_0
    const-string v5, "LinkAddresses: ["

    .line 371
    .local v5, linkAddresses:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .local v0, addr:Landroid/net/LinkAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 368
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v5           #linkAddresses:Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterfaceName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 372
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #ifaceName:Ljava/lang/String;
    .restart local v5       #linkAddresses:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    const-string v1, "DnsAddresses: ["

    .line 375
    .local v1, dns:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, addr:Ljava/net/InetAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 376
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v9, "Routes: ["

    .line 379
    .local v9, routes:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .local v8, route:Landroid/net/RouteInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 380
    .end local v8           #route:Landroid/net/RouteInfo;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 381
    iget-object v10, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v10, :cond_4

    const-string v6, ""

    .line 384
    .local v6, proxy:Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    if-nez v10, :cond_5

    const-string v4, ""

    .line 385
    .local v4, ifaceNameV6:Ljava/lang/String;
    :goto_5
    iget-object v10, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-nez v10, :cond_6

    const-string v7, ""

    .line 394
    .local v7, proxyV6:Ljava/lang/String;
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    monitor-exit p0

    return-object v10

    .line 381
    .end local v4           #ifaceNameV6:Ljava/lang/String;
    .end local v6           #proxy:Ljava/lang/String;
    .end local v7           #proxyV6:Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpProxy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 384
    .restart local v6       #proxy:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterfaceNameV6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mIfaceNameV6:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 385
    .restart local v4       #ifaceNameV6:Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpProxyV6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 397
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v4           #ifaceNameV6:Ljava/lang/String;
    .end local v5           #linkAddresses:Ljava/lang/String;
    .end local v6           #proxy:Ljava/lang/String;
    .end local v9           #routes:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 687
    monitor-enter p0

    .line 689
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 692
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 722
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 695
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 697
    .local v0, d:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 700
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_1
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 702
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 705
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_2
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_3

    .line 706
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 707
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 713
    :goto_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_4

    .line 715
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 716
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxyV6:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 722
    :goto_4
    monitor-exit p0

    .line 724
    return-void

    .line 709
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 718
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
