Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEF131A7E4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772147714; cv=none; b=L21cQldcQH16zaYIECJnuXN1sJpucb6YRY1F+4l+/ipGQVXxIgZeOe7iOE7KGjqIFMfhRwB42OlyShAWC2rZnJtyMpTbH/SOpjwz5PRoJt7RIY0WJjBi5vP3D0CAMrJ0owvzEPOU2ty4YWpQAcCKut4BwRXrrymAFd+L1RiYxaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772147714; c=relaxed/simple;
	bh=S1VLFOobaihYsflXowt8RTtVRGf46AYPjMCuR3I8sZM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gfQGj35mMqLPMLxAK8GqGxku+JtY7ncUcPUraiXDSHke/fhLxGIpIc7gA6QX484Rb2cajuPpXdyLMaLsipj6pwr8aLqLrLc6QPGBj4fVV5tiPz9iujxzA9ls6Tf2YZm5mtM5631wA/mH9dYEnuUpdwNHnJJOxfpK53/PIO5IoHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772147714;
	bh=S1VLFOobaihYsflXowt8RTtVRGf46AYPjMCuR3I8sZM=;
	h=Subject:From:To:Date:From;
	b=nbxKUshZWPvJeTNwPVu2FAiM7bMQ5WOV5Ulw/STmEFO+ZdGRjcEK4dkaUuZSe6rGg
	 2HISZ/POvqZZ42zTsjrj7psI7Z5OBzSC28PnTNHTw2fCiOS8/H3wV+tK8irEB+MJJF
	 9vYP/wgsOyU4EjkONO9J/9RYS3ag2ijzNR5RYXco=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FC17C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:15:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCBD23931098
	for <linux-kernel-announce@vger.kernel.org>; Thu, 26 Feb 2026 23:15:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 26 Feb 2026 23:15:18 +0000
Message-Id: <20260226231518.release-6.18.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.14.xz

Linux kernel version 6.18.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.14/v6.18.13

