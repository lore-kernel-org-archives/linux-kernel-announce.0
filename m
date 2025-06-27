Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047EC264A83
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020812; cv=none; b=QLxhShfSu+uFzAQCc2mH26AcNFoZ/5at9XUOPk+Bk7N1uiVOg3cmvUXfbbRpts0zBK500wWPxUNJ0i48w7NZz67wuv9kaYMV7zgne9wImqsRx8OB4uZA2ND/lKUbki0cbNqwXZBMLNmUDfe4OVEtFdouVTzaMN4fjCWfru0utvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020812; c=relaxed/simple;
	bh=E/x+p9UNEmfRhcg9CqYa/lUpn7xs2OXz3UyrY7/BjTQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nHuLzS38hFzXY04s0TqLG4EoD+kDWK1lmZ/LcRfq+If0AgY1gbRjDppwAfS+2KyUexJjSBUg5DvausTZ87LsI28/hNO+ql3MUXR3XtvB6D7ny1J/rJGzbmtlYcDPr2T2iWEjDa7nAZ8nSVN/A7isjtM5YyA7MS4HLl6oO0jvUoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751020812;
	bh=E/x+p9UNEmfRhcg9CqYa/lUpn7xs2OXz3UyrY7/BjTQ=;
	h=Subject:From:To:Date:From;
	b=qsUzDPahPZN5yTG9Byf3ke3zMbDTaTD0rSyBuv+b8yJTZUHSvT5V7EZTYcnou3OVa
	 e5RIo3l1fFsJKNkzvciLXK6ICaNChGxxbtAAmjwJD2Zz6LJfLxGeishqltSnTHhE4f
	 zV3vOj6MLFaH6yUv/+eyi7t/W7DuOa4D8R1sHhzw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8B02C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33BFB380DBEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:40:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.95 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:40:37 +0000
Message-Id: <20250627104037.release-6.6.95@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.95
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.95.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.95.xz

Linux kernel version 6.6.95 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.95.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.95.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.95.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.95/v6.6.94

