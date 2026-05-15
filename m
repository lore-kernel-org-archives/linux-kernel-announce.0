Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6D7312837
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850678; cv=none; b=W/fCIglxwBKT8NIDgjIiqG/5uFZq5WktXTMEMPJa90P4so2qXBBwDi0bqw3ksm/QlTUI+1aN9cXMs39gwP93hga6md9Euzswsn+iX5d5gNVqIyyr7Ym0lmg61p3YVZJP+4l6YauMAoXvVw74n7uTEezh+kCADeyH17ZIL9fvrpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850678; c=relaxed/simple;
	bh=91QWFZOfCmI8tRs28tS9yrU+rSPey1O0ddhnGelIqFs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=eSbi/XxgonFzkJzG9+vqf+O7d4XfppkU8yUZ51MUfbI4/dodSBdk7zgEBcB4Ja2xhZWuivXdncUaTfO9Q9DompvNkGyuFOs/zJiIRABTAZN2FSlpw1V+cDb4ZpipOx/RWUTFcBd+OF7RcIpiJwKq4hqm+id7Gq8YqEz2RV0EBnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778850678;
	bh=91QWFZOfCmI8tRs28tS9yrU+rSPey1O0ddhnGelIqFs=;
	h=Subject:From:To:Date:From;
	b=hWAMvSlfGL9qCQepAOkhZJBIqK06WjHrROOTlBCSczW6CyqUvuOxgOh7eZo51THRW
	 6n9KBKGe5bc3uKCYAB8GwpGtbQZBZJ3dHVPt5OvWArS6xlKnkFaQ0o/c2KC1VkOfFg
	 lydRPjInyb7j8r/7AVFcdmx04/QL+Rak31ZZaJhc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9561C2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:11:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42A57383BAC4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:10:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.139 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:10:19 +0000
Message-Id: <20260515131019.release-6.6.139@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.139
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.139.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.139.xz

Linux kernel version 6.6.139 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.139.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.139.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.139.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.139/v6.6.138

