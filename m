Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4AD1448FD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723637745; cv=none; b=sF2u8ZKlgYOqFLmsLNXJCly2vQJEZ72mD+Ebqh90Ukz5WI62WIlpmGlTIfzm9pBKV5j12Q15Oqhc47DMjc96CUJwZqqGzlkBO5VtRiRKq7ZULMAx9uxUKDmLBN4vISMsLLE11VQXTpu4frkOfrY0kHLJEsR6Kh63IQ+5m+faTz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723637745; c=relaxed/simple;
	bh=VSWZfWkLC/t2qwR3N54llie30kAto0SY1UQk/U/2hEs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QWul5wiFOGztgyTJYmpOUt8IWy0f3sre5jsWqzCG14/+cQ6BV88fTJNhD6Tl72oUrCGd9K6XMmWPTvoVpQnUKGiqEByDEppV5veu2AEZP4SUUmAidvPZ5jd0Zt42b79JHJSTwD7r/jEEcB8eMsYwJMNaFZSPMYsI/TiXfxVVE8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723637745;
	bh=VSWZfWkLC/t2qwR3N54llie30kAto0SY1UQk/U/2hEs=;
	h=Subject:From:To:Date:From;
	b=fXBrXz9uQzd5oq53eKAvwOqlWyxKvQUzf842KFaAM2/goFJqUXMCVh4EneEWTW0YT
	 JZH+RV7w7vI/xTTWq5ci+0CZ9qJAtP2CNh+rXl7TZpkeTiVulOuh4rdqtn/ipyY56Z
	 mQZiyugl7yvOLfbrqyXHvA8yZNFZoGF3cVJr+JFI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3758C32786
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:15:44 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 39BA338232A8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 14 Aug 2024 12:15:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.46 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 14 Aug 2024 12:15:43 +0000
Message-Id: <20240814121543.release-6.6.46@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.46
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.46.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.46.xz

Linux kernel version 6.6.46 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.46.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.46.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.46.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.46/v6.6.45

