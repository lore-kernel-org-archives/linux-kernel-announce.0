Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989D82DC32A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393934; cv=none; b=rSRyUkl3gt4xAMqgQkt1FsDG7xPrsS5ix05+LAPcaJjKdYDNJCjk6dLEEJ3VhWIgVVEM8st72hLM7/H+W93taas9oN99y2DM2h66bt/aBvqmKiJ8cW/jHhH9ZqLPpykIRKVbmcMBqjbUIXBdnrC0yazlAffhJ+qp+0+MeOjvTfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393934; c=relaxed/simple;
	bh=UHiV8mWHqkXv5/8BSfC92RtvMDT2x5n6lfCy4p2LjlU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k6I/2KCpOcQF9e3VaVUcW+xgxMvHchLWm/98YfTwF+SViDSMLNf5mPgG0hah+TKkRwSh4uIFM4yHVhwaqOt9Q0rL9kmXrK+zXwKgHl+JPwS70m/I7Uw+/n8WWx3ms2j3zLulMekmVWaKpy9a4q6J+Wnpkrz7mDXTX5upyfopL74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770393934;
	bh=UHiV8mWHqkXv5/8BSfC92RtvMDT2x5n6lfCy4p2LjlU=;
	h=Subject:From:To:Date:From;
	b=AoxByrg8sBWpTVLNyR4J0+00rEp/buBJmPip6FjgYdkzXF6CYhU5eJATLk4lRlVDt
	 dtd4V8goKTutRBHeDW6tG/0dgXYrJgH5FayyBB3IR3FOOg1VZtWlGNhNlw9AMZbnah
	 VeMqwVWyamwJNm4r3uef2Jkp52CyGLrMgnu5QaBo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE31C116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:05:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C50EE3809A02
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 16:05:32 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.123 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 16:05:31 +0000
Message-Id: <20260206160531.release-6.6.123@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.123
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.123.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.123.xz

Linux kernel version 6.6.123 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.123.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.123.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.123.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.123/v6.6.122

