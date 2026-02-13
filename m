Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2707F26FD9A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Feb 2026 16:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771000526; cv=none; b=o2g6oDZVSWDZAL7nJFkAUjjSGEUO9aJmiFQl/wGVEAzEFVuFzHr2Q/Zmd5GBYCVEB+7EhlkUjiw6yrnFMkQtIPHaE8/cooqAh0ADK9O/Fv+pJcOuAPHkE378QPpulzw1bWIRawKC8uALqBLTBBAo4tXXvBHOD/OUQI1exNI1678=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771000526; c=relaxed/simple;
	bh=QbYV/ttMVXoWkG3Slt4gl5LcosH1gHwKwQA5A/BUcWM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bsN+plcWWke6aP1zOqI1f/4BOM8mTGGp5/jfJdgqwaNJtxcVAAk9HZO7/59Lo9cQW5bTVu0Ih9a6NlIVAcnu2JbrKiOzMzsgFSaL1W6mgFu7mNavtIyy58IQWWZfYHyQ+vRD/K6bSxxRq6rUMrYvm/hdI7/jHlLw46SyHsHDUHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771000526;
	bh=QbYV/ttMVXoWkG3Slt4gl5LcosH1gHwKwQA5A/BUcWM=;
	h=Subject:From:To:Date:From;
	b=Gdb9oCAAXqWg2UmofHQMy+UCETCrlD6e9Q8JV6s5Jw8mWpx7hYVYT4dCCdy8lID/E
	 24NM2nldJYWSc+o//DEjsxNlMrqfjVJS4iEqveJ4hN3aj8GmyhMOXQxvORBZthERQB
	 1PmwJYN9mTL49Fl3j7xlpspPgTZYIPqqHa0udBn0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA34C19421
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Feb 2026 16:35:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C4CEF380AA58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 13 Feb 2026 16:35:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.71 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 13 Feb 2026 16:35:19 +0000
Message-Id: <20260213163519.release-6.12.71@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.71
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.71.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.71.xz

Linux kernel version 6.12.71 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.71.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.71.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.71.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.71/v6.12.70

