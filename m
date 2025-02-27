Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FB227003F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740659709; cv=none; b=Txq8j5vCOXG5ojzvlTFPZ6nueBni5uo0ZMxzMtSIiEgZL3cqAsW5BS6oLO6y+f6ylyYcL9WQAZUax1rAE5yQa1ynB3g026UZawwLiL0BuLJlZOdonego5m9tc8GUL5KrpewX7B5BJVeTTIngnVRI4RpFba0otZcexsQzSTKNYOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740659709; c=relaxed/simple;
	bh=0JHYvbY8EZ65vysHXm9hQjM5MlvtV/9tnWzd2JUI+Js=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gaeTI6GSpitU6Smr3zEMBh4AcVh+1w1vKhKXy2xdtHSIe+1WYGsOsHq5KTSlygHEuwZ5lES2UrQ93gYhnxBZqO+dptVcZjVsByEy89H9/Nx8cf8eNJhx3iC1kqw4EjhAn2YivL9rQD2zunJC4LzelIS5G3UbcY5eVPH5qtwb1pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740659709;
	bh=0JHYvbY8EZ65vysHXm9hQjM5MlvtV/9tnWzd2JUI+Js=;
	h=Subject:From:To:Date:From;
	b=Mf+bKIXQ573hZR9qhROb8te6BR0rZDwpRA3PSqAh0NjDg+gDzL/XVv5B1I5yw7xuo
	 DNZejvxOCcLRH99E2vnVnrXXD4pUFeSqEjUtcdn6pjW4XCGiTduzUZKlJU8vpP7jlf
	 gNvtzgCxrAeDqfDW0iVWpT+biC3x13qGKFOzWtcQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A537C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 12:35:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B4EF1380AA7F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Feb 2025 12:35:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.80 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Feb 2025 12:35:40 +0000
Message-Id: <20250227123540.release-6.6.80@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.80
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.80.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.80.xz

Linux kernel version 6.6.80 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.80.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.80.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.80.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.80/v6.6.79

