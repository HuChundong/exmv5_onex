.class public Lcom/htc/provider/IndexProviderConst;
.super Ljava/lang/Object;
.source "IndexProviderConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/IndexProviderConst$IndexBaseColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "vo.contentprovider.DataStorageProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_LANGUAGE:Ljava/lang/String; = "Language"

.field public static final IDS_URI:Landroid/net/Uri; = null

.field public static final INDEXED_IDS_URI:Landroid/net/Uri; = null

.field public static final INDEXER_LANGUAGE:Ljava/lang/String; = "KEY_INDEXER_LANGUAGE"

.field public static final INDEXER_LANGUAGE_CHANGED:Ljava/lang/String; = "com.htc.notes.INK_INDEXER_LANGUAGE_CHANGED"

.field public static final INDEXER_START_INTENT:Ljava/lang/String; = "com.htc.notes.INK_INDEXER_SERVICE_START"

.field public static final INDEXER_STOP_INTENT:Ljava/lang/String; = "com.htc.notes.INK_INDEXER_SERVICE_STOP"

.field public static final INDEX_URI:Landroid/net/Uri; = null

.field public static final INK_URI:Landroid/net/Uri; = null

.field public static final NOTE_URI:Landroid/net/Uri; = null

.field public static final PREFS_NAMEFILE:Ljava/lang/String; = "Ink_Search_Preferences"

.field public static final PRIORITY_URI:Landroid/net/Uri;

.field public static final UNINDEXED_IDS_URI:Landroid/net/Uri;

.field public static URI_SEGMENT_IDS:Ljava/lang/String;

.field public static URI_SEGMENT_INDEX:Ljava/lang/String;

.field public static URI_SEGMENT_INDEXED_IDS:Ljava/lang/String;

.field public static URI_SEGMENT_INK:Ljava/lang/String;

.field public static URI_SEGMENT_NOTE:Ljava/lang/String;

.field public static URI_SEGMENT_PRIORITY:Ljava/lang/String;

.field public static URI_SEGMENT_UNINDEXED_IDS:Ljava/lang/String;


# instance fields
.field private final mAuthority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "ids"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_IDS:Ljava/lang/String;

    .line 31
    const-string v0, "indexed"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INDEXED_IDS:Ljava/lang/String;

    .line 36
    const-string v0, "unindexed"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_UNINDEXED_IDS:Ljava/lang/String;

    .line 41
    const-string v0, "ink"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INK:Ljava/lang/String;

    .line 46
    const-string v0, "index"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INDEX:Ljava/lang/String;

    .line 51
    const-string v0, "note"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_NOTE:Ljava/lang/String;

    .line 56
    const-string v0, "priority"

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_PRIORITY:Ljava/lang/String;

    .line 59
    const-string v0, "content://vo.contentprovider.DataStorageProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->IDS_URI:Landroid/net/Uri;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INDEXED_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->INDEXED_IDS_URI:Landroid/net/Uri;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_UNINDEXED_IDS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->UNINDEXED_IDS_URI:Landroid/net/Uri;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->INK_URI:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->INDEX_URI:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_NOTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->NOTE_URI:Landroid/net/Uri;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://vo.contentprovider.DataStorageProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/IndexProviderConst;->URI_SEGMENT_PRIORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/IndexProviderConst;->PRIORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "vo.contentprovider.DataStorageProvider"

    iput-object v0, p0, Lcom/htc/provider/IndexProviderConst;->mAuthority:Ljava/lang/String;

    .line 100
    return-void
.end method
