.class public Lcom/htc/videowidget/videoview/utilities/share/CompListUtil;
.super Ljava/lang/Object;
.source "CompListUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompListUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FilterOutDisabledItems(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .local p1, excludes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 202
    .local v1, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/common/Constants;->isUnsupportedPackage(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 204
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, -0x1

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v1           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_1
    return-void
.end method

.method public static FilterOutDuplicateItems(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v3, candidateList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 110
    .local v9, release:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 112
    .local v1, candidate:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    if-eqz v1, :cond_5

    .line 114
    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getSupportType()I

    move-result v4

    .line 115
    .local v4, candidateSupport:I
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getSupportType()I

    move-result v11

    .line 117
    .local v11, releaseSupport:I
    if-eq v4, v11, :cond_0

    const v12, 0x20003

    if-eq v12, v4, :cond_0

    .line 122
    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, candidateIntentAction:Ljava/lang/String;
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, releaseIntentAction:Ljava/lang/String;
    or-int v6, v11, v4

    .line 126
    .local v6, finalSupport:I
    move-object v5, v2

    .line 128
    .local v5, finalIntentAction:Ljava/lang/String;
    const/high16 v12, 0x3

    and-int/2addr v12, v6

    const/high16 v13, 0x3

    if-ne v12, v13, :cond_1

    .line 130
    const v12, -0x10001

    and-int/2addr v6, v12

    .line 133
    :cond_1
    const/high16 v12, 0x2

    and-int/2addr v12, v6

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 134
    const/high16 v12, 0x2

    and-int/2addr v12, v11

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 135
    move-object v5, v10

    .line 142
    :cond_2
    :goto_1
    if-eq v4, v6, :cond_3

    .line 143
    invoke-interface {v1, v6}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->setSupportType(I)V

    .line 146
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 147
    invoke-interface {v1, v5}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    move-object v5, v2

    goto :goto_1

    .line 173
    .end local v2           #candidateIntentAction:Ljava/lang/String;
    .end local v4           #candidateSupport:I
    .end local v5           #finalIntentAction:Ljava/lang/String;
    .end local v6           #finalSupport:I
    .end local v10           #releaseIntentAction:Ljava/lang/String;
    .end local v11           #releaseSupport:I
    :cond_5
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, aiName:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v12, "com.htc.android.mail"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 175
    const v12, 0x20003

    invoke-interface {v9, v12}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->setSupportType(I)V

    .line 178
    :cond_6
    invoke-interface {v9}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v0           #aiName:Ljava/lang/String;
    .end local v1           #candidate:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #release:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 182
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {p0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method

.method public static FilterOutItems(Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter "filterArray"
    .parameter "isExcluded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 95
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 96
    .local v1, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 98
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 100
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, -0x1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0           #i:I
    .end local v1           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_2
    return-void
.end method

.method public static FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .local p1, allowPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 78
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 79
    .local v1, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_1
    const-string v2, "com.htc.android.mail"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v2, "com.android.bluetooth"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public static FilterOutMMSItems(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .local p1, excludePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 188
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    .line 189
    .local v1, info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v0, v0, -0x1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1           #info:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    :cond_1
    const-string v2, "com.android.mms"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public static addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    .local p1, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 47
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v2, p2, p3, p4}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v0

    .line 48
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v3, "CompListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][CompListUtil][addComparableRIList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0           #comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public static addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter "resolveInfo"
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .parameter "nPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, comparable:Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v0

    .line 67
    const/4 v1, -0x1

    if-ne v1, p5, :cond_2

    .line 68
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_1
    const-string v1, "CompListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][CompListUtil][addSingleComparableRIList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-interface {p0, p5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, criList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 27
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v2, p1, p2, p3}, Lcom/htc/videowidget/videoview/utilities/share/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/videowidget/videoview/utilities/share/IComparableRI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method
