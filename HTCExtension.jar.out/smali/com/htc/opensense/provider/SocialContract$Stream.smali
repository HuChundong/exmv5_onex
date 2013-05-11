.class public Lcom/htc/opensense/provider/SocialContract$Stream;
.super Ljava/lang/Object;
.source "SocialContract.java"

# interfaces
.implements Lcom/htc/opensense/provider/SocialContract$StreamColumn;
.implements Lcom/htc/opensense/provider/SocialContract$StreamParameters;
.implements Lcom/htc/opensense/provider/SocialContract$StreamTypeBit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/SocialContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.opensense.social"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.opensense.social"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT:Ljava/lang/String; = "stream_timestamp DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/opensense/provider/SocialContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUriWithAccTypeAccNameType(Ljava/util/List;I)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter "streamType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, TypeNameList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/provider/SocialContract$Stream;->buildUriWithAccTypeAccNameType(Ljava/util/List;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildUriWithAccTypeAccNameType(Ljava/util/List;IZ)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter "streamType"
    .parameter "latestOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, TypeNameList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 198
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 199
    .local v2, typename:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "account_type"

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    const-string v4, "account_name"

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 203
    .end local v2           #typename:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "stream_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    const-string v3, "latest"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static buildUriWithAccountTypeAndNameBetween(Ljava/lang/String;Ljava/lang/String;JJI)Landroid/net/Uri;
    .locals 3
    .parameter "accountType"
    .parameter "accountName"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "syncStreamType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "between_start"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "between_end"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stream_type"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildUriWithAccountTypesAndNames(Ljava/util/List;)Landroid/net/Uri;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    .local p0, TypeNameList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/opensense/provider/SocialContract$Stream;->buildUriWithAccountTypesAndNames(Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildUriWithAccountTypesAndNames(Ljava/util/List;Z)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter "latestOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, TypeNameList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 180
    .local v2, typename:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "account_type"

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    const-string v4, "account_name"

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 184
    .end local v2           #typename:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "latest"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static buildUriWithPosterAndAccType(Ljava/util/List;Z)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter "latestOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, PosterTypeList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 141
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 142
    .local v2, postertype:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "poster"

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    const-string v4, "account_type"

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 146
    .end local v2           #postertype:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "latest"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method
