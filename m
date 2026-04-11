Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83CC205E25
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 13:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775912445; cv=none; b=qbZ3BKs74eYnNgg5m7n9S39vmcXdZ25PPny1CUi1HRAm9JB7tnjypj/mhkQRzplU/TLai7JjNYPRakhl2dR5J/23B2qyvDR+oBmkrxMTgzmCDOmij9hNQNA4+5P6hHcOe7QXPzh+IS59iirJMtY9p4RGD0p/sLXJMHPqtA6A1Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775912445; c=relaxed/simple;
	bh=UEhJox1Ed1dBlLIHIzYXThBWznMHUZxMl2fdVR73kqg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=juPyaTPe0r9JifyB29yEhkWKiXF2hGmBXktm1YJ6bev1jYoitIKk11FCc8324EPrgQ3Y9pCjqQDqUjwbPFD5pqKbidO0iAXRFoO4ms1QUk0hO/x61rl05SJNta3r0/woUo03RlXUVzesLcGTZjPmdtv84TiRQhrFCS9XWrDUd6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775912445;
	bh=UEhJox1Ed1dBlLIHIzYXThBWznMHUZxMl2fdVR73kqg=;
	h=Subject:From:To:Date:From;
	b=dGFxkr+OYU9kuSU9mY9EjfsULxkguKt1xuIgrXS2ORFw7Ia7OSXU8VuaUEn68lKMF
	 qQBhtSiYZNlSZgdfTKlR5mNme7lxb1vndPK7gSzZ7GlKFMzKxvHeE9LBmHCsweIEqj
	 S6UxIN7dZPJNlABGXHgrKMLPwOro9EG/q2LmR8Xo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F697C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 13:00:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 426BD3809A8B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 13:00:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 11 Apr 2026 13:00:18 +0000
Message-Id: <20260411130018.release-6.19.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.12.xz

Linux kernel version 6.19.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.12/v6.19.11

