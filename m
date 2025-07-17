Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E902303DE5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752771919; cv=none; b=omcDCGHKktum7nf7J9BbeaJMlGYN/Ix5qL2U9YMHCl2hwqlDMOaVe3SfThK93liuaVD5x2orGz4UIZ506gmNIuXT/ciyPCIXe4FzXOJ0Y/p4r/O9qZuAyHBhI3NKl+w6MA06SaWvExbu4OtEMk3ZsonsoyH2tWWrNXJ85TZUZ1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752771919; c=relaxed/simple;
	bh=sRHOMTH7Ri8wOfScntvqiEnCOf+t6KFvngb1u1ICjhQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sWKt7q67dFHMaS0GQxe1mpsTdYNmdx0NJZ+l0Sw8+YCIdUVa7teufaPO25yVUP0/45yGZsuxQHx9wWHXT+P3mj38qlSjmbi84LpIst8aNhvoHyt6oq1H8+mYPMvWXDpmEeDaVdO+mfjuN/ip6usrLJXfaRBIIahKlrboTg3uT+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752771919;
	bh=sRHOMTH7Ri8wOfScntvqiEnCOf+t6KFvngb1u1ICjhQ=;
	h=Subject:From:To:Date:From;
	b=T4PnNLu18KKSH8Sd35U94yGnFGLv5waNf0RG38QQG9bwigKXOIe596/U+yRmCs/gK
	 FNYP12TMPDs1cI3YvSxZ3PQu8FZBzrA7tLrYCJlF+n5NX66SmIpaY4b6W57pE2s83j
	 zdlWDIlTPik6FZSlExsxK+oQv/xZqzKJvhgO8FaQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E3CAC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70C91383BF4A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Jul 2025 17:05:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.99 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Jul 2025 17:05:39 +0000
Message-Id: <20250717170539.release-6.6.99@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.99
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.99.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.99.xz

Linux kernel version 6.6.99 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.99.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.99.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.99.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.99/v6.6.98

