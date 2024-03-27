Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549A01CD18
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518646; cv=none; b=pGNBtGgNDwmp5oTb7hyRz2tmg1Vy5C1EeYm45Gp9WyNvTjU0oZiFxqShR/tTtpHO0ogb3m3xN442cP82A9t3pyZbRZEAEX415lK7u8DvXUefg29563R9Oae6XZTlFLzInDwbjiu8M0DrbJNvT31EbtzsBUvD0UQzfrH/BJC1DrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518646; c=relaxed/simple;
	bh=gsltXSKMEHsvAcl7qUU8wPO+fI/fscZsjaXt3fLaBhs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=idII15lxr4c1oZPw86QMeNw9HIU1iB5OHzp1HpyuQ3JskkWqzPzFEAGPTAUEJCevEnz9oN62Mgj6lomMwxg04dWEDZneEGGzYf/cvsuuoR0AHrq1558dIG7+ozvun6NhyoEjN1sDiYFNJxLfWdxwJeA7qXucVPKZwcWrT490aUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518646;
	bh=gsltXSKMEHsvAcl7qUU8wPO+fI/fscZsjaXt3fLaBhs=;
	h=Subject:From:To:Date:From;
	b=asVYEQrJCFMg0Xx6t0SNmO6KP+fv4PaOR3SgYlJeEBnzwktTqz3PnQ2b5Tv5Ze0ji
	 owxloE4SC67t9HerT7o7sxfxH1/NJuCDKqU68fslUipG9Ur97T+uuibfzJyYIZuKtX
	 L0yIlum0jlNDkGUxuw7gTdhr4uXgK0/Qfo/BSYr0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EFA6C43390
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 0EF74D8BD1D
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.153 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:50:45 +0000
Message-Id: <20240327055045.release-5.15.153@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.153
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.153.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.153.xz

Linux kernel version 5.15.153 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.153.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.153.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.153.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.153/v5.15.152

