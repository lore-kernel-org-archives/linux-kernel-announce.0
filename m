Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8F72AE8E
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Dec 2024 15:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733931038; cv=none; b=d9M3bYwkCApOnjja2tbn3BaZG7UJWJlA5S/SFv5L4DennVf599tN/RF7dJzGtW9sqSV9ARI5TXTHVrpbpnKvaRXHzWahFDK/ZD/jUIxsK53GxYLEgNq/41apcAvLeGVhP2c94u1dXvHk53Z8bx5XYDnZO6YB42hmXEiZhIx/WIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733931038; c=relaxed/simple;
	bh=75hiwJLvLNP09USfrJIPhH/uOD1mlrxB4yELtvtEO50=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Uqp2/yPkz12oJlmMLUpQ2Mk50u50YRqRaK4jE4KTW7XB6sBiqb3V0SR+fgjfdN5n2JHC8ScAw5jTQII9MBzfo84sBDa3UJ8g6Y+mYuJxx4tjoQqYnwGotOmX98OiEgB8XENnjrrwHiRy2GpiK+x3OIsM/uNy4LnkmXhnUSr7Z+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733931038;
	bh=75hiwJLvLNP09USfrJIPhH/uOD1mlrxB4yELtvtEO50=;
	h=Subject:From:To:Date:From;
	b=kYJIC63MIyiki3J2PBQZzwqHl5qgSOqeGJpgb2X7Hz7qNms87FPQ1sdUQzVFY8/FK
	 ge7C+3/x2Gb45I/CW71SaRToao4ugebVkDSMiWEpRdOvzy+zLK6xOCRPU6aZtc/79l
	 B4Xh4YpFPlW7/2befRqNU60KbLojEmZr8lNazMOI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D4CFC4CED7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Dec 2024 15:30:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 719B0380A962
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Dec 2024 15:30:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.65 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 11 Dec 2024 15:30:53 +0000
Message-Id: <20241211153053.release-6.6.65@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.65
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.65.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.65.xz

Linux kernel version 6.6.65 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.65.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.65.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.65.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.65/v6.6.64

