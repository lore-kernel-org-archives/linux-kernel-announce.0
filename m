Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64F519DFAC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134658; cv=none; b=vF5aowJzC27hoOZCcxVY8+ldn0DhY82QUSdthckKh/KY2lo/uKGt679Z0PIjO3eGXftVR8UkqdxcJTAijYz95zP63BhbjpBC7QtLMm7eEdzUtEQWVZMwKeTOjUy17KzLFgW1omInClnyX7udngNhi5IU09B4gJNKkdhZK5zKygQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134658; c=relaxed/simple;
	bh=eCblhKp5Odq6ZDxBiJ/XcdMxp+Ob8evrKHE1KUbreGk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=KdKz/G7hQjCdwbNKFMVQDfhzeO0fW7e8HayqxXBs/UNAleu2SJkIHG6yIpgv32GDuPVhucSZyoEJHC2et1maIIiWSeKQlaj7VCFwnO8m2yT3eHsa37qws3jZbEp2GHJR+CrNiZBsQQdPUGjP4R2/HQrQiigTW4kjrISwvL7Ckx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134658;
	bh=eCblhKp5Odq6ZDxBiJ/XcdMxp+Ob8evrKHE1KUbreGk=;
	h=Subject:From:To:Date:From;
	b=WyjdowLaxm7zqstOZWz7yqpZrO0G+zFMMal8nJlpNjGOVzsed9K7+rujp7DkaEGcY
	 Koh9k7pZ3nY20BIeP6zwW03eLyMlwTKW4KnwI6kpUde1/Tt4e1AW0lBkofl3jmxFEL
	 rQ/1GoxKzPPuuMFPkQqaNKZv3GlyRbGJXBDSOc3k=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F6AC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADEFA3806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:51:00 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.226 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:50:59 +0000
Message-Id: <20240912095059.release-5.10.226@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.226
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.226.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.226.xz

Linux kernel version 5.10.226 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.226.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.226.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.226.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.226/v5.10.225

