.class public abstract Landroid/widget/IMECursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "IMECursorAdapter.java"


# static fields
.field private static final AUTHORITY_Latin:Ljava/lang/String; = "htc_ime_latin"

.field private static final CONTENT_DIRECTORY:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INPUT_TYPE_BROWSER:I = 0x1

.field public static final INPUT_TYPE_DEFAULT:I = 0x0

.field public static final MAX_INPUT_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IMECursorAdapter"


# instance fields
.field private MAX_STRING_COLLECT:I

.field private mInputType:I

.field private mSuperFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "content://htc_ime_latin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rc_contacts_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rc_top_website"

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 28
    iput v1, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 29
    iput-boolean v1, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 28
    iput v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 29
    iput-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 52
    return-void
.end method


# virtual methods
.method protected BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 109
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Landroid/widget/IMECursorAdapter$1;

    invoke-direct {v0, p0, p0}, Landroid/widget/IMECursorAdapter$1;-><init>(Landroid/widget/IMECursorAdapter;Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    return v0
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 174
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 175
    iput p1, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    .line 176
    :cond_0
    return-void
.end method

.method public setMaxStringReturn(I)V
    .locals 0
    .parameter "m"

    .prologue
    .line 104
    if-lez p1, :cond_0

    .line 105
    iput p1, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    .line 106
    :cond_0
    return-void
.end method

.method public setSuperType(Z)V
    .locals 0
    .parameter "isSuper"

    .prologue
    .line 187
    iput-boolean p1, p0, Landroid/widget/IMECursorAdapter;->mSuperFilter:Z

    .line 188
    return-void
.end method

.method protected stringCorrection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/IMECursorAdapter;->BeforeStringCorrection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-object v8

    .line 121
    :cond_0
    const/4 v8, 0x0

    .line 122
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Landroid/widget/IMECursorAdapter;->HTCIMEProviderLatin_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/widget/IMECursorAdapter;->CONTENT_DIRECTORY:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/IMECursorAdapter;->mInputType:I

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, htcime_rc:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 124
    .local v4, args:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 125
    .local v9, string_count:I
    const/4 v6, 0x0

    .line 127
    .local v6, csr:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/widget/IMECursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 135
    :goto_1
    if-nez v6, :cond_2

    .line 137
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 140
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .restart local v8       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/IMECursorAdapter;->MAX_STRING_COLLECT:I

    if-ge v9, v0, :cond_3

    .line 143
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v9, v9, 0x1

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 148
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
