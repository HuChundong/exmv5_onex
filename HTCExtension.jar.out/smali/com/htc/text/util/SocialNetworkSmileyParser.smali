.class public Lcom/htc/text/util/SocialNetworkSmileyParser;
.super Ljava/lang/Object;
.source "SocialNetworkSmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;
    }
.end annotation


# static fields
.field private static final CHARPATTERN:Ljava/util/regex/Pattern; = null

.field public static final EMO_ANGEL:I = 0x3f3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_COOL:I = 0x3ef
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_CRYING:I = 0x3f5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_EMBARRASSED:I = 0x3f2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_FOOT_IN_MOUTH:I = 0x3f1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_HAPPY:I = 0x3e9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_KISSING:I = 0x3ee
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_LAUGHING:I = 0x3f7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_LIPS_ARE_SEALED:I = 0x3f6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_LOVE:I = 0x3fa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_MONEY_MOUTH:I = 0x3f0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_SAD:I = 0x3ea
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_SURPRISED:I = 0x3ed
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_TONGUE_STICKING_OUT:I = 0x3ec
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_UNDECIDED:I = 0x3f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_WINKING:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_WTF:I = 0x3f8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMO_YELLING:I = 0x3f9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final RESOURCE_PACKAGENAME:Ljava/lang/String; = "com.htc.socialnetwork.res"

.field private static final SMILEYTORES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/htc/text/util/SocialNetworkSmileyParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/util/SocialNetworkSmileyParser;->LOG_TAG:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/text/util/SocialNetworkSmileyParser;->mResource:Landroid/content/res/Resources;

    .line 172
    invoke-static {}, Lcom/htc/text/util/SocialNetworkSmileyParser;->buildSmileyToResId()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/text/util/SocialNetworkSmileyParser;->SMILEYTORES:Ljava/util/HashMap;

    .line 173
    invoke-static {}, Lcom/htc/text/util/SocialNetworkSmileyParser;->buildCharPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/text/util/SocialNetworkSmileyParser;->CHARPATTERN:Ljava/util/regex/Pattern;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method private static buildCharPattern()Ljava/util/regex/Pattern;
    .locals 7

    .prologue
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v2, patternString:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/htc/text/util/SocialNetworkSmileyParser;->SMILEYTORES:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 195
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, s:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ")"

    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    return-object v4
.end method

.method private static buildSmileyToResId()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x3ee

    const/16 v6, 0x3ec

    const/16 v5, 0x3eb

    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, smileyToResString:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, ":-)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, ":-("

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, ";-)"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, ":-P"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "=-O"

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, ":-*"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "B-)"

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, ":-$"

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, ":-!"

    const/16 v2, 0x3f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, ":-["

    const/16 v2, 0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "O:-)"

    const/16 v2, 0x3f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, ":-\\"

    const/16 v2, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, ":\'("

    const/16 v2, 0x3f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, ":-X"

    const/16 v2, 0x3f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, ":-D"

    const/16 v2, 0x3f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "o_O"

    const/16 v2, 0x3f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, ":)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, ";)"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, ":("

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, ":o"

    const/16 v2, 0x3f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, ":P"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, ":$"

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, ":*"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, ":O"

    const/16 v2, 0x3f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "<3"

    const/16 v2, 0x3fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-object v0
.end method

.method private static declared-synchronized ensureResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4
    .parameter "context"

    .prologue
    .line 177
    const-class v2, Lcom/htc/text/util/SocialNetworkSmileyParser;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/text/util/SocialNetworkSmileyParser;->mResource:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc.socialnetwork.res"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/htc/text/util/SocialNetworkSmileyParser;->mResource:Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/htc/text/util/SocialNetworkSmileyParser;->mResource:Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v1, Lcom/htc/text/util/SocialNetworkSmileyParser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "!! can not find resource from com.htc.socialnetwork.res"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 177
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    sget-object v1, Lcom/htc/text/util/SocialNetworkSmileyParser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resource not found!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getSmileyInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v4, tags:Ljava/util/List;,"Ljava/util/List<Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;>;"
    sget-object v5, Lcom/htc/text/util/SocialNetworkSmileyParser;->CHARPATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 319
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, matchText:Ljava/lang/String;
    sget-object v5, Lcom/htc/text/util/SocialNetworkSmileyParser;->SMILEYTORES:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 322
    .local v2, resId:I
    new-instance v3, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-direct {v3, v0, v5, v6, v2}, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;-><init>(Ljava/lang/String;III)V

    .line 323
    .local v3, tag:Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v0           #matchText:Ljava/lang/String;
    .end local v2           #resId:I
    .end local v3           #tag:Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;
    :cond_0
    return-object v4
.end method

.method public static getSocialNetworkEmoticonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "openSenseRes"

    .prologue
    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, socialNetworkRes:I
    packed-switch p1, :pswitch_data_0

    .line 296
    const/4 v3, 0x0

    .line 299
    :goto_0
    if-lez v3, :cond_0

    if-nez p0, :cond_2

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 313
    :cond_1
    :goto_1
    return-object v0

    .line 242
    :pswitch_0
    const v3, 0x7020005

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    const v3, 0x702000b

    .line 246
    goto :goto_0

    .line 248
    :pswitch_2
    const v3, 0x702000f

    .line 249
    goto :goto_0

    .line 251
    :pswitch_3
    const v3, 0x702000d

    .line 252
    goto :goto_0

    .line 254
    :pswitch_4
    const v3, 0x702000c

    .line 255
    goto :goto_0

    .line 257
    :pswitch_5
    const v3, 0x7020006

    .line 258
    goto :goto_0

    .line 260
    :pswitch_6
    const v3, 0x7020001

    .line 261
    goto :goto_0

    .line 263
    :pswitch_7
    const v3, 0x702000a

    .line 264
    goto :goto_0

    .line 266
    :pswitch_8
    const v3, 0x7020004

    .line 267
    goto :goto_0

    .line 269
    :pswitch_9
    const v3, 0x7020003

    .line 270
    goto :goto_0

    .line 272
    :pswitch_a
    const/high16 v3, 0x702

    .line 273
    goto :goto_0

    .line 275
    :pswitch_b
    const v3, 0x702000e

    .line 276
    goto :goto_0

    .line 278
    :pswitch_c
    const v3, 0x7020002

    .line 279
    goto :goto_0

    .line 281
    :pswitch_d
    const v3, 0x7020008

    .line 282
    goto :goto_0

    .line 284
    :pswitch_e
    const v3, 0x7020007

    .line 285
    goto :goto_0

    .line 287
    :pswitch_f
    const v3, 0x7020010

    .line 288
    goto :goto_0

    .line 290
    :pswitch_10
    const v3, 0x7020011

    .line 291
    goto :goto_0

    .line 293
    :pswitch_11
    const v3, 0x7020009

    .line 294
    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    .line 305
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0}, Lcom/htc/text/util/SocialNetworkSmileyParser;->ensureResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 306
    .local v2, resource:Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 309
    .end local v2           #resource:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v4, Lcom/htc/text/util/SocialNetworkSmileyParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found openSenseRes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v4, Lcom/htc/text/util/SocialNetworkSmileyParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not found socialNetworkRes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
