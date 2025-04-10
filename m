Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F352857F5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744290618; cv=none; b=m4iRmC2IwFLv39qvUSDmW5zCB1Jqh3j3sxFuINuKDt9/OZ1ftsEnA6npieLBVgSv3PPx1BFWH0heGpmTv0UAaxLjFx/gQYw4c/tXhNuwQKy1UtygMPLKgMXG3HG4B2BaPgGG7GcpwKjJBvj0rhp9PRNIbigdjztBFqWotiUkCpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744290618; c=relaxed/simple;
	bh=dmd04PkjlrZnmJmUMYj0gKmeqh67TUv6DQ1/L3hsof0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k5soKkAQ475jyERnS3Zqwsb6cljBuXQU+8dKWqg7mwmsqKz3+0zckQ+N0AhC5n8fg/6HUw7d4ysDDlNq6RafzxxPY4htf9u2ZtYkxzZ11Z5xX7w2sqWBF/5b4VHmgr8wojoJM1gidRVhB/9sbh6K3pcgajlj3x7o8P8vxY8Vi7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744290618;
	bh=dmd04PkjlrZnmJmUMYj0gKmeqh67TUv6DQ1/L3hsof0=;
	h=Subject:From:To:Date:From;
	b=m7hXnLwI6/K7Gn4icntN467Aav7urjaIsp+RoEdRWlNxFMd8pX2IhdpHQWAwSInmQ
	 rBVIXNTvYOk5U7wXqB1gr9hFBhbEm7oN2CSPaZrencLj9Y3wKX7KUhuZTRgX+Bah6B
	 zhtZgqhlxuI7cZ0rQzbRZKDZDuG/0OrQm1TnKDKE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95E03C4CEE8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:10:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3823C380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:10:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.87 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 13:10:54 +0000
Message-Id: <20250410131054.release-6.6.87@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.87
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.87.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.87.xz

Linux kernel version 6.6.87 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.87.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.87.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.87.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.87/v6.6.86

