.class public final Lcom/htc/util/contacts/SNLinkUtils;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/SNLinkUtils$NewMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$OldMethod;,
        Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FACEBOOK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook/login"

.field public static final FACEBOOK_LOGIN_ORI_MIMETYPE:Ljava/lang/String; = "com.facebook.auth.login/login"

.field public static final FLICKR_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr/login"

.field private static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field private static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final KAIXIN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.KaixinFriendStream/login"

.field public static final LINK_NOTE_LIMIT:I = 0x14

.field public static final PLURK_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.plurk/login"

.field public static final QQIM_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqim/login"

.field public static final QQWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.qqweibo/login"

.field public static final QZONE_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.socialnetwork.chinasns/login"

.field public static final RENREN_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin/login"

.field public static final SINAWEIBO_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin/login"

.field private static final TAG:Ljava/lang/String; = "SNLinkUtils"

.field public static final TWITTER_LOGIN_MIMETYPE:Ljava/lang/String; = "com.htc.htctwitter/login"

.field public static final TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final TYPE_FACEBOOK_SSO:Ljava/lang/String; = "facebook sso"

.field public static final TYPE_FLICKR:Ljava/lang/String; = "flickr"

.field public static final TYPE_PLURK:Ljava/lang/String; = "plurk"

.field public static final TYPE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final mCachedLoginIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/util/contacts/ContactsUtility;->DEBUG:Z

    sput-boolean v0, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/util/List;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->refineData(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 298
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, list_new:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v1, :cond_1

    move-object v1, v0

    .line 293
    .end local v1           #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 285
    .restart local v1       #list_old:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_1
    if-eqz v0, :cond_0

    .line 287
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 288
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findPositionByUserId(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v3, -0x1

    .line 115
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 123
    :cond_1
    :goto_0
    return v2

    .line 117
    :cond_2
    const/4 v2, 0x0

    .line 118
    .local v2, pos:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 119
    .local v1, l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    move v2, v3

    .line 123
    goto :goto_0
.end method

.method public static getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "AccountType"

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "AccountType"

    .prologue
    .line 275
    return-object p0
.end method

.method public static isSNContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSNFacebookLogin()Z
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNFlickrLogin()Z
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNKaixinLogin()Z
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNLogin()Z
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNPlurkLogin()Z
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQIMLogin()Z
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQQWeiboLogin()Z
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNQZoneLogin()Z
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNRenrenLogin()Z
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNSinaLogin()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSNTwitterLogin()Z
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type1"
    .parameter "type2"

    .prologue
    const/4 v0, 0x1

    .line 1153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1154
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return v0

    .line 1157
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    :cond_2
    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static refineData(Ljava/util/List;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v7, 0x0

    .line 1168
    const/4 v4, 0x0

    .line 1169
    .local v4, needRewriteNote:Z
    if-nez p0, :cond_0

    .line 1221
    :goto_0
    return v7

    .line 1172
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1173
    .local v5, size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v1, dataListBackup:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-lez v5, :cond_c

    .line 1177
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_9

    .line 1178
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1179
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    if-eqz v0, :cond_8

    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 1181
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 1182
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v9, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 1183
    sget-boolean v8, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "NOTE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after refine data.userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1
    const/4 v4, 0x1

    .line 1186
    :cond_2
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1187
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v9, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 1188
    sget-boolean v8, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "NOTE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after refine data.userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_3
    const/4 v4, 0x1

    .line 1191
    :cond_4
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_6

    .line 1192
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v9, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 1193
    sget-boolean v8, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "NOTE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after refine data.friendOf = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_5
    const/4 v4, 0x1

    .line 1196
    :cond_6
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_8

    .line 1197
    iget-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v9, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 1198
    sget-boolean v8, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "NOTE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after refine data.friendOf = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_7
    const/4 v4, 0x1

    .line 1177
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1205
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_c

    .line 1206
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1207
    .local v6, targetData:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_3
    if-ge v3, v5, :cond_b

    .line 1208
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1209
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    if-eqz v0, :cond_a

    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    iget-object v7, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 1210
    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v8, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v8, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v8, v6, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1211
    invoke-interface {p0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1212
    const/4 v4, 0x1

    .line 1213
    sget-boolean v7, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "NOTE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after refine data size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1205
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v3           #j:I
    .end local v6           #targetData:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_c
    move v7, v4

    .line 1221
    goto/16 :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 304
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils;->transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, newText:Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeLoginId(Ljava/lang/String;)V
    .locals 1
    .parameter "AccountType"

    .prologue
    .line 208
    if-eqz p0, :cond_0

    .line 209
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    return-void
.end method

.method public static setLoginId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "AccountType"
    .parameter "id"

    .prologue
    .line 200
    sget-boolean v0, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SNLinkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    if-eqz p0, :cond_1

    .line 202
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    return-void
.end method

.method public static setLoginIdForSNAcoount(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 218
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 220
    const-string v3, "mimetype = com.htc.socialnetwork.facebook/login OR mimetype = com.facebook.auth.login/login OR mimetype = com.htc.socialnetwork.flickr/login OR mimetype = com.htc.socialnetwork.plurk/login OR mimetype = com.htc.htctwitter/login OR mimetype = com.htc.friendstream.sinaweiboplugin/login OR mimetype = com.htc.socialnetwork.qqim/login OR mimetype = com.htc.socialnetwork.qqweibo/login OR mimetype = com.htc.socialnetwork.chinasns/login OR mimetype = com.htc.KaixinFriendStream/login OR mimetype = com.htc.friendstream.renrenwebplugin/login"

    .line 231
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/provider/HtcContactsContract$Data;->CONTENT_URI_DATA_ONLY:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "mimetype"

    aput-object v5, v2, v9

    const-string v5, "data1"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_c

    .line 233
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 234
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, type:Ljava/lang/String;
    const-string v0, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "com.facebook.auth.login/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.facebook.auth.login"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_4
    const-string v0, "com.htc.htctwitter/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.auth.login"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 253
    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqim"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 256
    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.qqweibo"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 259
    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.socialnetwork.chinasns"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :cond_9
    const-string v0, "com.htc.KaixinFriendStream/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 263
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.KaixinFriendStream"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 265
    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin/login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/htc/util/contacts/SNLinkUtils;->mCachedLoginIds:Ljava/util/HashMap;

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 269
    .end local v7           #type:Ljava/lang/String;
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_c
    return-void
.end method

.method public static transferToNewFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "oriText"

    .prologue
    .line 314
    sget-boolean v16, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "oriText: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    const/4 v10, 0x0

    .line 317
    .local v10, newText:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 372
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 321
    .restart local p0
    :cond_2
    const-string v16, "<sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 322
    .local v13, startingIndexOld:I
    const-string v16, "</sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 323
    .local v6, endingIndexOld:I
    const-string v16, "<HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 324
    .local v12, startingIndexNew:I
    const-string v16, "</HTCData>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 326
    .local v5, endingIndexNew:I
    if-lt v6, v13, :cond_3

    if-ge v5, v12, :cond_7

    .line 328
    :cond_3
    if-le v13, v12, :cond_6

    move v9, v13

    .line 329
    .local v9, index:I
    :goto_1
    if-lez v9, :cond_4

    .line 330
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 332
    :cond_4
    sget-boolean v16, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v16, :cond_5

    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fix the note: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 p0, v10

    .line 333
    goto :goto_0

    .end local v9           #index:I
    :cond_6
    move v9, v12

    .line 328
    goto :goto_1

    .line 337
    :cond_7
    const-string v16, "<sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 338
    .local v11, startingIndex:I
    const-string v16, "</sn>"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, endingIndex:I
    if-lt v4, v11, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_1

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_1

    .line 344
    const-string v16, "<sn>"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v16, v16, v11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 345
    .local v14, subText:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v16, "|"

    move-object/from16 v0, v16

    invoke-direct {v7, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v7, idListTokens:Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_8
    :goto_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 348
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 349
    .local v15, token:Ljava/lang/String;
    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, ids:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_8

    .line 353
    const/16 v16, 0x0

    aget-object v16, v8, v16

    const-string v17, "id:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    aget-object v16, v8, v16

    const-string v17, "friendof:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 355
    new-instance v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v2}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 356
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/16 v16, 0x0

    aget-object v16, v8, v16

    const-string v17, "id:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 357
    const/16 v16, 0x1

    aget-object v16, v8, v16

    const-string v17, "friendof:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 358
    iget-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    iget-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 359
    const-string v16, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 363
    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    :cond_9
    const-string v16, "com.facebook.auth.login"

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    goto :goto_3

    .line 369
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v8           #ids:[Ljava/lang/String;
    .end local v15           #token:Ljava/lang/String;
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v3, v1}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v10

    .line 370
    sget-boolean v16, Lcom/htc/util/contacts/SNLinkUtils;->DEBUG:Z

    if-eqz v16, :cond_b

    const-string v16, "NOTE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "newText: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 p0, v10

    .line 372
    goto/16 :goto_0
.end method
