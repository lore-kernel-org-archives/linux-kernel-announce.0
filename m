Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA722EACB
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705749338; cv=none; b=NfPoOsLugt6VrC5aj2Xt3kDwt9fPcZBtvBug7aARww6M3U4zh8RQOMbKhvrRA0b6GiYdH1NvXp+Bvus4VLvU8vCsZx/GAVQ8vysFn0IEzStI2QRgdQmOxOZVqSon8G05lqk/JXeccZ5op48hQ2umIJR5iec5duMZaCRfrztuNZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705749338; c=relaxed/simple;
	bh=7Yu7VdZALZsvPlBSZTKkc7+IMrVxI6Xp+uKAkQznAws=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DJXIIhe6cyYt7XnKOrOZT1+rXzDePtKed6ra8SA5UvHmwrWXJAMYKBwAq6+d+4S5FA3bWxRbJ+gloeuU6K9ieNYby64fzqLQTJiTVph1FYADzhgNr14/1xRTtBiK2tvI3X4oNqsfs6njqzfUaNP2Er+jB9980avC/R6YdJGeScs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1705749338;
	bh=7Yu7VdZALZsvPlBSZTKkc7+IMrVxI6Xp+uKAkQznAws=;
	h=Subject:From:To:Date:From;
	b=iBdVNljl1MzZi4Y0RCXMwCSBbpEDYBtWEIkQ6y6VtFbaD9bz+NEX5tMQW38OGNgnr
	 J/vrWug5f9KTHiz6fA0v0NRFiR8fWqLIX20mBKu+asK6oilJ1Q1rw0a6l4abtxIKM7
	 b13Gt5arlSNTlhXrsjicfgVn30DKzpZSrEulUbBo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92EF8C43390
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 786B0D8C97A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 20 Jan 2024 11:15:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 20 Jan 2024 11:15:38 +0000
Message-Id: <20240120111538.release-6.7.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.1.xz

Linux kernel version 6.7.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.1/v6.7

