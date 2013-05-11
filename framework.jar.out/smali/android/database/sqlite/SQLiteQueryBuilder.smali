.class public Landroid/database/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final sLimitPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mDistinct:Z

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mProjectionMap:Ljava/util/Map;
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

.field private mStrict:Z

.field private mTables:Ljava/lang/String;

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 52
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 53
    return-void
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "name"
    .parameter "clause"

    .prologue
    .line 256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    return-void
.end method

.method public static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .parameter "columns"

    .prologue
    .line 267
    array-length v2, p1

    .line 269
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 270
    aget-object v0, p1, v1

    .line 272
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 273
    if-lez v1, :cond_0

    .line 274
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0           #column:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    return-void
.end method

.method public static buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "distinct"
    .parameter "tables"
    .parameter "columns"
    .parameter "where"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 204
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 205
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "HAVING clauses are only permitted when using a groupBy clause"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Landroid/database/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_1

    .line 209
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid LIMIT clauses:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 213
    :cond_1
    const/16 v5, 0x78

    .line 214
    .local v5, length:I
    if-eqz p2, :cond_3

    .line 215
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 216
    .local v2, col:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 215
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #col:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 220
    if-eqz p3, :cond_4

    .line 221
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 222
    :cond_4
    if-eqz p4, :cond_5

    .line 223
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 224
    :cond_5
    if-eqz p5, :cond_6

    .line 225
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 226
    :cond_6
    if-eqz p6, :cond_7

    .line 227
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 228
    :cond_7
    if-eqz p7, :cond_8

    .line 229
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 231
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v6, query:Ljava/lang/StringBuilder;
    const-string v7, "SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p0, :cond_9

    .line 237
    const-string v7, "DISTINCT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_9
    if-eqz p2, :cond_a

    array-length v7, p2

    if-eqz v7, :cond_a

    .line 240
    invoke-static {v6, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 244
    :goto_1
    const-string v7, "FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v7, " WHERE "

    invoke-static {v6, v7, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v7, " GROUP BY "

    invoke-static {v6, v7, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v7, " HAVING "

    invoke-static {v6, v7, p5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v7, " ORDER BY "

    move-object/from16 v0, p6

    invoke-static {v6, v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v7, " LIMIT "

    move-object/from16 v0, p7

    invoke-static {v6, v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 242
    :cond_a
    const-string v7, "* "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "projectionIn"

    .prologue
    .line 650
    if-eqz p1, :cond_5

    array-length v9, p1

    if-lez v9, :cond_5

    .line 651
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v9, :cond_3

    .line 652
    array-length v9, p1

    new-array v7, v9, [Ljava/lang/String;

    .line 653
    .local v7, projection:[Ljava/lang/String;
    array-length v6, p1

    .line 655
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 656
    aget-object v8, p1, v4

    .line 657
    .local v8, userColumn:Ljava/lang/String;
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 660
    aput-object v0, v7, v4

    .line 655
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 664
    :cond_0
    iget-boolean v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    if-nez v9, :cond_2

    const-string v9, " AS "

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, " as "

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 667
    :cond_1
    aput-object v8, v7, v4

    goto :goto_1

    .line 671
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid column "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v0           #column:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #length:I
    .end local v7           #projection:[Ljava/lang/String;
    .end local v8           #userColumn:Ljava/lang/String;
    :cond_3
    move-object v7, p1

    .line 696
    :cond_4
    :goto_2
    return-object v7

    .line 678
    :cond_5
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v9, :cond_7

    .line 680
    iget-object v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 681
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 682
    .restart local v7       #projection:[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 683
    .local v2, entryIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 685
    .restart local v4       #i:I
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 686
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 689
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "_count"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 692
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v4

    move v4, v5

    .line 693
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 696
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #entryIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #i:I
    .end local v7           #projection:[Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private validateQuerySql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .parameter "db"
    .parameter "sql"
    .parameter "cancellationSignal"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 435
    return-void
.end method


# virtual methods
.method public appendWhere(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "inWhere"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 102
    return-void
.end method

.method public appendWhereEscapeString(Ljava/lang/String;)V
    .locals 2
    .parameter "inWhere"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, projection:[Ljava/lang/String;
    const/16 v9, 0x1e

    .line 472
    .local v9, length:I
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    add-int/2addr v9, v0

    .line 473
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v9, v0

    .line 475
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 478
    .local v10, where:Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v8, 0x1

    .line 480
    .local v8, hasBaseWhereClause:Z
    :goto_1
    if-eqz v8, :cond_1

    .line 481
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 487
    if-eqz v8, :cond_2

    .line 488
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_2
    const/16 v0, 0x28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    :cond_3
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    .end local v8           #hasBaseWhereClause:Z
    .end local v10           #where:Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "subQueries"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 623
    array-length v6, p1

    .line 625
    .local v6, subQueryCount:I
    const/16 v4, 0x80

    .line 626
    .local v4, length:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 627
    .local v7, subqry:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xb

    add-int/2addr v4, v9

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    .end local v7           #subqry:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 630
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 632
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 636
    .local v5, query:Ljava/lang/StringBuilder;
    iget-boolean v9, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    if-eqz v9, :cond_4

    const-string v8, " UNION "

    .line 638
    .local v8, unionOperator:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v6, :cond_5

    .line 639
    if-lez v1, :cond_3

    .line 640
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_3
    aget-object v9, p1, v1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 636
    .end local v1           #i:I
    .end local v8           #unionOperator:Ljava/lang/String;
    :cond_4
    const-string v8, " UNION ALL "

    goto :goto_1

    .line 644
    .restart local v1       #i:I
    .restart local v8       #unionOperator:Ljava/lang/String;
    :cond_5
    const-string v9, " ORDER BY "

    invoke-static {v5, v9, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v9, " LIMIT "

    invoke-static {v5, v9, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "typeDiscriminatorColumn"
    .parameter "unionColumns"
    .parameter
    .parameter "computedColumnsOffset"
    .parameter "typeDiscriminatorValue"
    .parameter "selection"
    .parameter "groupBy"
    .parameter "having"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 562
    .local p3, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, p2

    .line 563
    .local v9, unionColumnsCount:I
    new-array v1, v9, [Ljava/lang/String;

    .line 565
    .local v1, projectionIn:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 566
    aget-object v8, p2, v7

    .line 568
    .local v8, unionColumn:Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 565
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 571
    :cond_0
    if-le v7, p4, :cond_1

    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    :cond_1
    aput-object v8, v1, v7

    goto :goto_1

    .line 575
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NULL AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    goto :goto_1

    .line 578
    .end local v8           #unionColumn:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "typeDiscriminatorColumn"
    .parameter "unionColumns"
    .parameter
    .parameter "computedColumnsOffset"
    .parameter "typeDiscriminatorValue"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    .local p3, columnsPresentInTable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"

    .prologue
    .line 315
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 354
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"
    .parameter "cancellationSignal"

    .prologue
    .line 396
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 421
    :goto_0
    return-object v1

    .line 400
    :cond_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, sqlForValidation:Ljava/lang/String;
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->validateQuerySql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .end local v8           #sqlForValidation:Ljava/lang/String;
    :cond_1
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 414
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, sql:Ljava/lang/String;
    const-string v1, "SQLiteQueryBuilder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const-string v1, "SQLiteQueryBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing query: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v4, p4

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 148
    return-void
.end method

.method public setDistinct(Z)V
    .locals 0
    .parameter "distinct"

    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 62
    return-void
.end method

.method public setProjectionMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 137
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 172
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrict:Z

    .line 173
    return-void
.end method

.method public setTables(Ljava/lang/String;)V
    .locals 0
    .parameter "inTables"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 83
    return-void
.end method
