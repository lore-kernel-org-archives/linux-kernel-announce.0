Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31741125CF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706223646; cv=none; b=qgCuCJeJBs7firHEpDc47cUpp/f+mW35GVoe6X7/+lvL7HOxOfOsX7gThFtYwxwb0iSaa4tqTbWvXHcP6KhQOLTg+UeI4/717dozxc2M4Ojxb3O1fx8pNj4hDyAD1fpH3R1WiAfyYG6lsK0BX1gmudQOYr6ihspQxtZdOFTqeQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706223646; c=relaxed/simple;
	bh=7rZILewR7aAG36JcZ6dGMrQ6+3KXZ4cwqbJh42Y/07o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=maNk8ALKmD0m67JoIxvnw22ufWrAdCYBRYUpVOiQqCycH1g6iLjJglI/5oaKWURVrf1BJw/O6ZVpOf84JPu8lsgVuPC/GP+hgsYm0i1Fgo8WQ5podk9G9PT5iy1j34PVekjlCzkjL9+Irn535iWhpNXZUilVl3UabjcltuzoU2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706223646;
	bh=7rZILewR7aAG36JcZ6dGMrQ6+3KXZ4cwqbJh42Y/07o=;
	h=Subject:From:To:Date:From;
	b=LahkcG3Hn6Cp7AKQ6bgwLB+O6EyHM7FJ2tnIKzAC5832o+w8qKhw1rJSUBSB86YeX
	 wpDZjhp3Gjcn61n7VXY/d96IY629pB4vfAigb3b7DHH2NnwljT37ptj7AYfbR5TCiM
	 J3DJvKDclzSTtw3TLzYjIn0PBlhVi77/dmbYTHhA=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04794C433C7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:00:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E2520DFF764
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:00:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.209 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 23:00:45 +0000
Message-Id: <20240125230045.release-5.10.209@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.209
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.209.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.209.xz

Linux kernel version 5.10.209 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.209.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.209.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.209.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.209/v5.10.208

