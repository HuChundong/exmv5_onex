.class public Lcom/htc/text/SocialMarkupFilter;
.super Ljava/lang/Object;
.source "SocialMarkupFilter.java"


# static fields
.field private static final SIZEOFBASETOKENS:I = 0x3

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/EmoticonTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/EmphasisTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/ImageTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/NewLineTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PlurkQualifierTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryAutoLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ak1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lk1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryTextTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/ProfileTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/SecondaryLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lk2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/SecondaryProfileTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pf2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/SecondaryTextTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/TimestampTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/VideoTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributesFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 17
    .parameter "rawContent"
    .parameter "decoration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/text/tag/ITag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/text/tag/ITag;>;"
    sget-object v15, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 122
    .local v11, tagId:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 123
    const-string v11, ""

    .line 125
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v8, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v3, decorations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "\\u0020"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, tokens:[Ljava/lang/String;
    move-object v1, v13

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v12, v1, v5

    .line 131
    .local v12, token:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 132
    const-string v15, "\n"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 133
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 141
    .end local v12           #token:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 142
    .local v7, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 143
    .local v9, size:I
    const/4 v10, 0x0

    .line 144
    .local v10, start:I
    const/4 v4, 0x0

    .line 145
    .local v4, end:I
    const-string v14, ""

    .line 146
    .local v14, type:Ljava/lang/String;
    const/4 v15, 0x3

    if-lt v9, v15, :cond_4

    .line 147
    const-string v16, "startPosition"

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 148
    const-string v16, "endPosition"

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 149
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #type:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 150
    .restart local v14       #type:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    .line 156
    .end local v4           #end:I
    .end local v7           #line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #size:I
    .end local v10           #start:I
    .end local v14           #type:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    return-object v15
.end method

.method public static getTextFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 17
    .parameter "rawContent"
    .parameter "decoration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/text/tag/ITag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/text/tag/ITag;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    if-nez p2, :cond_2

    .line 73
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :cond_1
    return-object v8

    .line 75
    :cond_2
    sget-object v15, Lcom/htc/text/SocialMarkupFilter;->sTagMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 76
    .local v11, tagId:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 77
    const-string v11, ""

    .line 79
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, decorations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "\\u0020"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, tokens:[Ljava/lang/String;
    move-object v1, v13

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v12, v1, v5

    .line 85
    .local v12, token:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 86
    const-string v15, "\n"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 87
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #dec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 95
    .end local v12           #token:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 96
    .local v7, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 97
    .local v9, size:I
    const/4 v10, 0x0

    .line 98
    .local v10, start:I
    const/4 v4, 0x0

    .line 99
    .local v4, end:I
    const-string v14, ""

    .line 100
    .local v14, type:Ljava/lang/String;
    const/4 v15, 0x3

    if-lt v9, v15, :cond_7

    .line 101
    const-string v16, "startPosition"

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 102
    const-string v16, "endPosition"

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 103
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 104
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #type:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 105
    .restart local v14       #type:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-ge v10, v4, :cond_7

    if-eqz v4, :cond_7

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getTextForFirstTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rawContent"
    .parameter "decoration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 68
    :cond_1
    :goto_0
    return-object v1

    .line 58
    :cond_2
    const-string v1, ""

    .line 59
    .local v1, result:Ljava/lang/String;
    const-string v4, "\\u0020"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, tokens:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 61
    const-string v4, "startPosition"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, start:I
    const-string v4, "endPosition"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, end:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    if-ge v2, v0, :cond_1

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
